$ErrorActionPreference = 'Stop'

$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$failures = [System.Collections.Generic.List[string]]::new()

function Test-Condition {
    param([string]$Name, [bool]$Ok, [string]$Detail)
    if ($Ok) {
        "OK    $Name :: $Detail"
    }
    else {
        "FALHA $Name :: $Detail"
        $script:failures.Add($Name)
    }
}

function Get-Count {
    param([string]$Path, [string]$Filter = '*')
    if (-not (Test-Path -LiteralPath $Path)) { return 0 }
    return @(Get-ChildItem -LiteralPath $Path -File -Recurse -Filter $Filter -ErrorAction SilentlyContinue).Count
}

$agents = Join-Path $root 'AGENTS.md'
$claude = Join-Path $root 'CLAUDE.md'
$spec = Join-Path $root 'docs\specs\SPEC-001-ARQUITETURA-INICIAL.md'
$sourceTruth = Join-Path $root 'docs\FONTE-UNICA-VERDADE.md'
$continuity = Join-Path $root 'governance\politicas\continuidade-ia.md'
$template = Join-Path $root 'templates\relatorios\MODELO-RELATORIO-CONTINUIDADE.md'
$state = Join-Path $root 'docs\estado\ESTADO-IMPLEMENTACAO.md'
$pending = Join-Path $root 'docs\estado\PENDENCIAS.md'

Test-Condition 'AGENTS.md existe' (Test-Path -LiteralPath $agents) $agents
if (Test-Path -LiteralPath $agents) {
    $agentLines = @(Get-Content -LiteralPath $agents).Count
    Test-Condition 'AGENTS.md limite de linhas' ($agentLines -le 250) "$agentLines linhas"
}
Test-Condition 'CLAUDE.md existe' (Test-Path -LiteralPath $claude) $claude
Test-Condition 'FONTE-UNICA-VERDADE.md existe' (Test-Path -LiteralPath $sourceTruth) $sourceTruth
Test-Condition 'continuidade-ia.md existe' (Test-Path -LiteralPath $continuity) $continuity
Test-Condition 'modelo de continuidade existe' (Test-Path -LiteralPath $template) $template
Test-Condition 'estado de implementação existe' (Test-Path -LiteralPath $state) $state
Test-Condition 'pendências existe' (Test-Path -LiteralPath $pending) $pending

Test-Condition 'SPEC-001 existe' (Test-Path -LiteralPath $spec) $spec
if (Test-Path -LiteralPath $spec) {
    $specText = Get-Content -LiteralPath $spec -Raw
    $sections = @(Select-String -InputObject $specText -Pattern '(?m)^## \d+\.' -AllMatches).Matches.Count
    Test-Condition 'SPEC-001 possui 32 seções' ($sections -eq 32) "$sections seções"
    Test-Condition 'SPEC-001 status PROPOSTA' ($specText -match 'PROPOSTA — AGUARDANDO APROVAÇÃO') 'status encontrado'
    Test-Condition 'Unreal PENDENTE DE DEFINIÇÃO' ($specText -match 'PENDENTE DE DEFINIÇÃO') 'registro encontrado'
}

$roles = Get-Count (Join-Path $root 'governance\agentes-jogo') '*.md'
$opencodeAdapters = Get-Count (Join-Path $root '.opencode\agents') '*.md'
$claudeAdapters = Get-Count (Join-Path $root '.claude\agents') '*.md'
Test-Condition '12 papéis canônicos' ($roles -eq 12) "$roles arquivos"
Test-Condition '12 adaptadores OpenCode' ($opencodeAdapters -eq 12) "$opencodeAdapters arquivos"
Test-Condition '12 adaptadores Claude Code' ($claudeAdapters -eq 12) "$claudeAdapters arquivos"

$skills = Get-Count (Join-Path $root '.agents\skills') 'SKILL.md'
$genericAgents = @(Get-ChildItem -LiteralPath (Join-Path $root 'agents') -Directory -ErrorAction SilentlyContinue).Count
$commands = @(Get-ChildItem -LiteralPath (Join-Path $root 'commands') -Directory -ErrorAction SilentlyContinue).Count
$bundles = Get-Count (Join-Path $root 'bundles') '*.md'
$originalKits = @(Get-ChildItem -LiteralPath (Join-Path $root 'kits') -Directory -ErrorAction SilentlyContinue | Where-Object { $_.Name -ne 'veyloq' }).Count
Test-Condition '14 skills VEYLOQ' ($skills -eq 14) "$skills arquivos SKILL.md"
Test-Condition '18 agentes genéricos VEYLOQ' ($genericAgents -eq 18) "$genericAgents diretórios"
Test-Condition '8 comandos VEYLOQ' ($commands -eq 8) "$commands diretórios"
Test-Condition '6 kits VEYLOQ originais' ($originalKits -eq 6) "$originalKits diretórios"
Test-Condition '1 bundle VEYLOQ' ($bundles -eq 1) "$bundles arquivo"
Test-Condition 'monólito VEYLOQ preservado' (Test-Path -LiteralPath (Join-Path $root 'kits\veyloq\referencias\AGENTS-veyloq-original.md')) 'arquivo presente'

$required = @(
    'README.md',
    'governance\politicas\fluxo-obrigatorio.md',
    'governance\politicas\seguranca-execucao.md',
    'governance\politicas\qualidade-testes.md',
    'governance\politicas\git-github.md',
    'governance\politicas\integracao-veyloq.md',
    'docs\arquitetura\ue5-arquitetura-inicial.md',
    'docs\decisoes\README.md',
    'docs\tarefas\README.md',
    'reports\RELATORIO-DIAGNOSTICO-INICIAL.txt',
    'reports\RELATORIO-RUAS-DO-BRASIL-PREPARACAO-INICIAL.txt',
    '.codex\README.md',
    '.opencode\README.md',
    '.claude\README.md',
    '.github\copilot-instructions.md',
    '.gitignore',
    '.gitattributes',
    'ATTRIBUTION.md'
)
$missing = @($required | Where-Object { -not (Test-Path -LiteralPath (Join-Path $root $_)) })
Test-Condition 'referências obrigatórias' ($missing.Count -eq 0) $(if ($missing.Count -eq 0) { "$($required.Count) presentes" } else { $missing -join ', ' })

$badOpencode = @(Get-ChildItem -LiteralPath (Join-Path $root '.opencode\agents') -File -Filter '*.md' | Where-Object { (Get-Content -LiteralPath $_.FullName -Raw) -notmatch '(?m)^permissions:' })
Test-Condition 'frontmatter OpenCode' ($badOpencode.Count -eq 0) "$($opencodeAdapters - $badOpencode.Count)/$opencodeAdapters válidos"

$badClaude = @(Get-ChildItem -LiteralPath (Join-Path $root '.claude\agents') -File -Filter '*.md' | Where-Object { (Get-Content -LiteralPath $_.FullName -Raw) -notmatch '(?m)^tools:' })
Test-Condition 'frontmatter Claude Code' ($badClaude.Count -eq 0) "$($claudeAdapters - $badClaude.Count)/$claudeAdapters válidos"

$artifacts = @(Get-ChildItem -LiteralPath $root -File -Recurse -ErrorAction SilentlyContinue | Where-Object { $_.Extension -in @('.uproject', '.cpp', '.h', '.hpp', '.umap', '.uasset') })
Test-Condition 'ausência de artefatos de jogo' ($artifacts.Count -eq 0) "$($artifacts.Count) encontrados"

$settings = Join-Path $root '.claude\settings.json'
Test-Condition 'ausência de hooks Claude' (-not (Test-Path -LiteralPath $settings)) 'settings.json ausente'

$previousPreference = $ErrorActionPreference
$ErrorActionPreference = 'Continue'
$diffOutput = & git --no-optional-locks -C $root diff --check 2>&1
$diffCode = $LASTEXITCODE
$ErrorActionPreference = $previousPreference
Test-Condition 'git diff --check' ($diffCode -eq 0) $(if ($diffCode -eq 0) { 'sem erros' } else { $diffOutput -join '; ' })

$head = (& git --no-optional-locks -C $root rev-parse HEAD).Trim()
Test-Condition 'HEAD preservado' ($head -eq '081039b85492654dd659d04483acdc8f08410210') $head

if ($failures.Count -gt 0) {
    "RESULTADO: FALHOU ($($failures.Count) verificações)"
    exit 1
}

'RESULTADO: OK (todas as verificações passaram)'
exit 0
