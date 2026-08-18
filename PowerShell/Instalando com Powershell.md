# Powershell: WinGet

Usando winget para instalação, atualização e desisntalação de aplicativos.

---

<br>

## LISTANDO APLICATIVOS

#### Descobrir o ID ou nome do aplicativo, listar tudo:
```
winget list
```

#### Filtrar por qualquer termo (busca genérica):
```
winget list "python"
```

#### Filtrar especificamente pelo nome do aplicativo:
```
winget list --name "Google Chrome"
```

#### Filtrar especificamente pelo ID do pacote:
```
winget list --id "Microsoft.PowerShell"
```

#### Programas instalados apenas no seu usuário atual (AppData):
```
winget list --scope user
```

#### Programas instalados para todos os usuários (Arquivos de Programas):
```
winget list --scope machine
```

<br>

### Filtro por Repositório/Origem (-s ou --source)

#### Listar apenas pacotes vinculados ao repositório do WinGet:

winget list -s winget

 
  >💡 Exemplo de Combinação
  >
  > Você pode unir múltiplos parâmetros para fazer uma busca extremamente específica:
  >
  > `` winget list --name "Visual Studio" --scope machine --source winget -e ``

---

<br>

## PESQUISANDO APLICATIVOS PARA INSTALAÇÃO

### Busca por Campos Específicos

#### Por ID do pacote (--id):
```
winget search --id "Microsoft.PowerShell"
```  
#### Por Nome do programa (--name):
```
winget search --name "Google Chrome"
```
  
#### Por Apelido / Atalho (--moniker):
```
winget search --moniker "code"
```
  
#### Por Comando executável (--command):
```
winget search --command "git"
```
  
#### Por Tag ou Categoria (--tag):
```
winget search --tag "pdf"
```
<br>

### Refinamento de Resultados

#### Correspondência Exata (-e ou --exact):
winget search "Python" -e

#### Limitar Quantidade de Resultados (-n ou --count):
winget search "browser" --count 5

#### Origem e Arquitetura
winget search "Spotify" -s msstore
winget search "Powershell" --source winget

#### Por Arquitetura de Processador (--architecture):
winget search "Node.js" --architecture x64

### Uso em Scripts e Automação

#### Aceitar termos da fonte automaticamente (--accept-source-agreements):
winget search "Docker" --accept-source-agreements

---

<br>

## INSTALANDO APLICATIVOS

> **Dica para instalar sem apresentar a tela do instalador**
>
> Utilize o comando ``--silent`` ao final da linha de comando

#### Stick Notes
```
winget install Simnet.SimpleStickyNotes --accept-source-agreements --accept-package-agreements --source winget -
-scope machine
```

#### Compactador 7Zip
```
winget install 7zip.7zip --accept-source-agreements --accept-package-agreements --source winget --scope machine
```

#### Notepad++
```
winget install Notepad++.Notepad++ --accept-source-agreements --accept-package-agreements --source winget --scope machine
```

#### Libre Office
```
winget install TheDocumentFoundation.LibreOffice --accept-source-agreements --accept-package-agreements --source winget --scope machine
```

#### Adobe Acrobat Reader x64
```
winget install --id Adobe.Acrobat.Reader.64-bit --accept-source-agreements --accept-package-agreements --source winget --scope machine
```

#### Java Runtime Environment (JRE)
```
winget install Oracle.JavaRuntimeEnvironment --accept-source-agreements --accept-package-agreements --source winget
```

--- 

#### PowerShell Atualizado (7.++)
```
winget install Microsoft.PowerShell --source winget
```

#### .Net Framework
```
winget install Microsoft.DotNet.SDK.10 --accept-source-agreements --accept-package-agreements --source winget
```

#### Visual Studio Code
```
winget install --id Microsoft.VisualStudioCode --accept-source-agreements --accept-package-agreements --source winget --scope user
```

#### Visual Studio Community 2026
```
winget install --id Microsoft.VisualStudio.Community -e --silent --source winget --scope user
```

---

<br>

## UPGRADE DE APLICATIVOS

#### Listar todos os programas com atualização disponível
```
winget upgrade
```

#### Atualizar TODOS os programas de uma vez
```
winget upgrade --all
```

#### Atualizar um aplicativo específico (ex: VS Code)
```Powershell
winget upgrade --id Microsoft.VisualStudioCode
```

> Para atualizar sem abrir janelas ou fazer perguntas:
winget upgrade --id Microsoft.VisualStudioCode --silent --accept-source-agreements --accept-package-agreements

---

<br>

## DESINSTALANDO APLICATIVOS

#### Desinstalar por ID (Recomendado)
```Powershell
winget uninstall --id <ID_DO_PACOTE>
```

#### Desinstalar em segundo plano (Silencioso)
```Powershell
winget uninstall --id <ID_DO_PACOTE> --silent
```

#### Limpar dados residuais e configurações (--purge)
> Se quiser tentar apagar também pastas de dados, histórico e configurações locais deixadas pelo programa (quando o desinstalador do app suportar essa opção):
winget uninstall --id <ID_DO_PACOTE> --purge
```Powershell
winget uninstall <ID_DO_PACOTE>
```

---

---

## Enviando comando para outros equipamentos da rede
```Powershell
Invoke-Command -ComputerName "HOST001" -Credential (Get-Credential) -ScriptBlock {
    winget install Simnet.SimpleStickyNotes --source winget --accept-source-agreements --accept-package-agreements
}
```

## Burlando as politicas de segurança temporariamente
```Powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```
