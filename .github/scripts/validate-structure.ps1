param([string]$Root = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path)

$ErrorActionPreference = 'Stop'
$failures = @()

function Assert-Condition {
  param([bool]$Condition, [string]$Message)
  if (-not $Condition) { $script:failures += $Message }
}

$required = @(
  'AGENTS.md',
  'README.md',
  'README-ia.md',
  'CLAUDE.md',
  'ATTRIBUTION.md',
  '.gitignore',
  '.gitattributes',
  'governance/agent-policies/fluxo-obrigatorio.md',
  'governance/quality-gates/quality-gates.md',
  'governance/security/security-baseline.md',
  'docs/tasks/agent-workflow.md',
  'docs/architecture/gta-brasil-diretrizes.md',
  'docs/architecture/papeis-agentes-gta-brasil.md',
  'templates/test-plans/test-report-template.md',
  'docs/operations/claude-code-integration.md',
  'reports/RELATORIO-GTA-BRASIL-ESTRUTURA-IA-001.txt',
  'reports/RELATORIO-GTA-BRASIL-HOMOLOGACAO-FINAL-001.txt',
  'reports/RELATORIO-GTA-BRASIL-INTEGRACAO-CLAUDE-001.txt',
  '.claude/settings.json',
  '.opencode/README.md',
  '.codex/README.md',
  '.github/copilot-instructions.md',
  '.claude/README.md',
  '.github/workflows/validate-structure.yml',
  '.github/scripts/validate-structure.ps1'
)

foreach ($item in $required) {
  Assert-Condition (Test-Path -LiteralPath (Join-Path $Root $item)) "Ausente: $item"
}

$agents = @(Get-ChildItem -LiteralPath (Join-Path $Root '.opencode/agents') -Filter '*.md' -File -ErrorAction SilentlyContinue)
Assert-Condition ($agents.Count -eq 12) "Agentes OpenCode: $($agents.Count) (esperado 12)"
foreach ($agent in $agents) {
  $text = Get-Content -LiteralPath $agent.FullName -Raw
  Assert-Condition ($text -match '(?m)^---\s*$') "Frontmatter ausente: agente $($agent.Name)"
  Assert-Condition ($text -match '(?m)^description:') "description ausente: agente $($agent.Name)"
  Assert-Condition ($text -match '(?m)^mode:') "mode ausente: agente $($agent.Name)"
}

$commands = @(Get-ChildItem -LiteralPath (Join-Path $Root '.opencode/commands') -Filter '*.md' -File -ErrorAction SilentlyContinue)
Assert-Condition ($commands.Count -eq 9) "Comandos OpenCode: $($commands.Count) (esperado 9)"
foreach ($command in $commands) {
  $text = Get-Content -LiteralPath $command.FullName -Raw
  Assert-Condition ($text -match '(?m)^---\s*$') "Frontmatter ausente: comando $($command.Name)"
  Assert-Condition ($text -match '(?m)^description:') "description ausente: comando $($command.Name)"
  Assert-Condition ($text -match '\$ARGUMENTS') "ARGUMENTS ausente: comando $($command.Name)"
}

$skills = @(Get-ChildItem -LiteralPath (Join-Path $Root '.agents/skills') -Directory -ErrorAction SilentlyContinue)
Assert-Condition ($skills.Count -eq 14) "Skills: $($skills.Count) (esperado 14)"
foreach ($skill in $skills) {
  $skillFile = Join-Path $skill.FullName 'SKILL.md'
  Assert-Condition (Test-Path -LiteralPath $skillFile) "SKILL.md ausente: $($skill.Name)"
  if (Test-Path -LiteralPath $skillFile) {
    $text = Get-Content -LiteralPath $skillFile -Raw
    Assert-Condition ($text -match '(?m)^description:') "description ausente: skill $($skill.Name)"
    Assert-Condition ($text -match '(?m)^name:') "name ausente: skill $($skill.Name)"
  }
}

$claudeAgents = @(Get-ChildItem -LiteralPath (Join-Path $Root '.claude/agents') -Filter '*.md' -File -ErrorAction SilentlyContinue)
Assert-Condition ($claudeAgents.Count -eq 12) "Agentes Claude: $($claudeAgents.Count) (esperado 12)"
foreach ($agent in $claudeAgents) {
  $text = Get-Content -LiteralPath $agent.FullName -Raw
  Assert-Condition ($text -match '(?m)^---\s*$') "Frontmatter ausente: agente Claude $($agent.Name)"
  Assert-Condition ($text -match '(?m)^name:') "name ausente: agente Claude $($agent.Name)"
  Assert-Condition ($text -match '(?m)^description:') "description ausente: agente Claude $($agent.Name)"
  Assert-Condition ($text -match '(?m)^tools:') "tools ausente: agente Claude $($agent.Name)"
  Assert-Condition ($text -match '\.opencode/agents/') "Referencia canonica ausente: agente Claude $($agent.Name)"
}

$claudeCommands = @(Get-ChildItem -LiteralPath (Join-Path $Root '.claude/commands') -Filter '*.md' -File -ErrorAction SilentlyContinue)
Assert-Condition ($claudeCommands.Count -eq 9) "Comandos Claude: $($claudeCommands.Count) (esperado 9)"
foreach ($command in $claudeCommands) {
  $text = Get-Content -LiteralPath $command.FullName -Raw
  Assert-Condition ($text -match '(?m)^---\s*$') "Frontmatter ausente: comando Claude $($command.Name)"
  Assert-Condition ($text -match '(?m)^description:') "description ausente: comando Claude $($command.Name)"
  Assert-Condition ($text -match '(?m)^argument-hint:') "argument-hint ausente: comando Claude $($command.Name)"
  Assert-Condition ($text -match '\$ARGUMENTS') "ARGUMENTS ausente: comando Claude $($command.Name)"
  Assert-Condition ($text -match '\.opencode/commands/') "Referencia canonica ausente: comando Claude $($command.Name)"
}

$claudeSkills = @(Get-ChildItem -LiteralPath (Join-Path $Root '.claude/skills') -Directory -ErrorAction SilentlyContinue)
Assert-Condition ($claudeSkills.Count -eq 14) "Skills Claude: $($claudeSkills.Count) (esperado 14)"
foreach ($skill in $claudeSkills) {
  $skillFile = Join-Path $skill.FullName 'SKILL.md'
  Assert-Condition (Test-Path -LiteralPath $skillFile) "SKILL.md ausente: skill Claude $($skill.Name)"
  if (Test-Path -LiteralPath $skillFile) {
    $text = Get-Content -LiteralPath $skillFile -Raw
    Assert-Condition ($text -match '(?m)^name:') "name ausente: skill Claude $($skill.Name)"
    Assert-Condition ($text -match '(?m)^description:') "description ausente: skill Claude $($skill.Name)"
    Assert-Condition ($text -match '\.agents/skills/') "Referencia canonica ausente: skill Claude $($skill.Name)"
  }
}

$settingsPath = Join-Path $Root '.claude/settings.json'
if (Test-Path -LiteralPath $settingsPath) {
  try {
    $settings = Get-Content -LiteralPath $settingsPath -Raw | ConvertFrom-Json
    Assert-Condition ($null -ne $settings.permissions) 'permissions ausente em .claude/settings.json'
    Assert-Condition ($settings.PSObject.Properties.Name -notcontains 'hooks') 'hooks nao permitido em .claude/settings.json'
    Assert-Condition ($settings.PSObject.Properties.Name -notcontains 'mcpServers') 'mcpServers nao permitido em .claude/settings.json'
  } catch {
    $script:failures += "JSON invalido: .claude/settings.json"
  }
}

$gitignoreText = Get-Content -LiteralPath (Join-Path $Root '.gitignore') -Raw
Assert-Condition ($gitignoreText -match [regex]::Escape('**/.claude/settings.local.json')) '.gitignore sem ignore de .claude/settings.local.json'

$agentsText = Get-Content -LiteralPath (Join-Path $Root 'AGENTS.md') -Raw
Assert-Condition ($agentsText.Length -le 5120) "AGENTS.md excede 5 KB ($($agentsText.Length) bytes)"
Assert-Condition ($agentsText -match 'GFM — Ruas do Brasil') 'AGENTS.md sem identidade GFM — Ruas do Brasil'
Assert-Condition ($agentsText -match 'PROIBIDO criar código') 'AGENTS.md sem restrição de implementação'

$allFiles = @(Get-ChildItem -LiteralPath $Root -Recurse -File -ErrorAction SilentlyContinue | Where-Object { $_.FullName -notmatch '\\\.git\\' })
$secretPatterns = @(
  '-----BEGIN (RSA|OPENSSH|DSA|EC|PGP) PRIVATE KEY-----',
  'AKIA[0-9A-Z]{16}',
  'ghp_[A-Za-z0-9]{36}',
  'AIza[0-9A-Za-z0-9_-]{35}'
)
$textExtensions = @('.md', '.txt', '.csv', '.json', '.yml', '.yaml', '.ps1', '.py', '.js', '.ts', '.xml', '.ini')

foreach ($file in $allFiles) {
  $name = $file.Name
  $full = $file.FullName
  $ext = $file.Extension
  Assert-Condition ($name -notmatch '^\.env($|\.)') "Arquivo sensivel: $full"
  Assert-Condition ($ext -notin @('.pem', '.key', '.pfx')) "Arquivo sensivel: $full"
  Assert-Condition ($name -notmatch '^id_rsa') "Arquivo sensivel: $full"
  Assert-Condition ($full -notmatch '\\(Binaries|Intermediate|Saved)\\') "Arquivo de build indevido: $full"
  Assert-Condition ($ext -notin @('.uasset', '.umap', '.uproject')) "Arquivo Unreal indevido: $full"
  Assert-Condition (-not ($full -match '\\Source\\' -and $ext -in @('.cpp', '.h'))) "Codigo de jogo indevido: $full"
  Assert-Condition (-not ($ext -in @('.cpp', '.h', '.cs') -and $full -notmatch '\\\.agents\\skills\\' -and $full -notmatch '\\kits\\' -and $full -notmatch '\\bundles\\')) "Codigo indevido: $full"

  if (($textExtensions -notcontains $ext) -and ($name -notin @('.gitignore', '.gitattributes'))) { continue }
  try { $content = [System.IO.File]::ReadAllText($full) } catch { continue }
  foreach ($pattern in $secretPatterns) {
    Assert-Condition (-not ($content -match $pattern)) "Padrao de segredo em $full"
  }
}

$linkPatterns = @(
  'AGENTS.md',
  'README.md',
  'README-ia.md',
  'CLAUDE.md',
  '.opencode/README.md',
  '.opencode/agents/*.md',
  '.opencode/commands/*.md',
  '.codex/README.md',
  '.github/copilot-instructions.md',
  '.claude/README.md',
  '.claude/agents/*.md',
  '.claude/commands/*.md',
  '.claude/skills/*/SKILL.md',
  '.claude/settings.json',
  'governance/agent-policies/fluxo-obrigatorio.md',
  'docs/tasks/agent-workflow.md',
  'docs/operations/README.md',
  'docs/operations/claude-code-integration.md',
  'reports/RELATORIO-GTA-BRASIL-INTEGRACAO-CLAUDE-001.txt',
  'docs/referencias/veyloq/README.md'
)
$linkFiles = @(foreach ($pattern in $linkPatterns) { Get-Item -Path (Join-Path $Root $pattern) -ErrorAction SilentlyContinue })

foreach ($file in $linkFiles) {
  $text = Get-Content -LiteralPath $file.FullName -Raw
  $matchesLocal = [regex]::Matches($text, '\]\(([^)]+)\)')
  foreach ($match in $matchesLocal) {
    $target = $match.Groups[1].Value.Trim()
    if ($target -match '^(https?:|mailto:|data:|www\.|#)') { continue }
    $target = ($target -split '\s+')[0]
    $target = ($target -split '#')[0]
    $target = ($target -split '\?')[0]
    $target = [System.Uri]::UnescapeDataString($target).Trim("<>""'")
    if ([string]::IsNullOrWhiteSpace($target)) { continue }
    if ($target -match '^[A-Za-z]:\\') { continue }
    if ($target.StartsWith('/')) {
      $candidate = Join-Path $Root $target.TrimStart('/')
    } else {
      $candidate = Join-Path (Split-Path $file.FullName -Parent) $target
    }
    Assert-Condition (Test-Path -LiteralPath $candidate) "Referencia local quebrada em $($file.Name): $target"
  }
}

if ($failures.Count -eq 0) {
  "OK: validacao estrutural aprovada (agentes=$($agents.Count), comandos=$($commands.Count), skills=$($skills.Count), claude-agentes=$($claudeAgents.Count), claude-comandos=$($claudeCommands.Count), claude-skills=$($claudeSkills.Count))"
  exit 0
}

"FALHOU: $($failures.Count) verificacao(oes)"
$failures | ForEach-Object { " - $_" }
exit 1
