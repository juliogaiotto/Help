# CAIXA DE FERRAMENTAS DO ANALISTA WINDOWS
## DICAS E COMANDOS (POWERSHELL/CMD)
### 12 FERRAMENTAS ESSENCIAIS PARA ADMINISTRAÇÃO, DIAGNÓSTICO E SUPORTE

---

## 1. WINDOWS ADMIN CENTER
**Descrição:** Interface web para administrar servidores e PCs remotamente.

### Comandos (PowerShell):
```powershell
PS> Get-Service
PS> Get-Process
PS> Get-Disk
PS> Get-Volume
PS> Get-NetAdapter
PS> Get-NetIPAddress
```

### 💡 Dica Rápida:
- **Para administração remota:**
  ```powershell
  PS> Enter-PSSession -ComputerName SERVIDOR01
  ```
- **Executar comando remoto:**
  ```powershell
  PS> Invoke-Command -ComputerName SERVIDOR01 -ScriptBlock { Get-Service }
  ```

---

## 2. RSAT
**Descrição:** Permite administrar serviços do Windows Server remotamente.

### Instalar RSAT (Windows 11):
```powershell
PS> Get-WindowsCapability -Online -Name RSAT*
PS> Get-WindowsCapability -Online -Name RSAT* | Where-Object { $_.State -eq "NotPresent" } | Add-WindowsCapability -Online
```

### Comandos Úteis:
```powershell
PS> Get-ADUser -Filter *
PS> Get-ADUser -Identity usuario
PS> New-ADUser -Name "Joao Silva"
PS> Get-DnsServerZone
PS> Get-DhcpServerv4Scope
PS> Get-GPO -All
```

### 💡 Dica Rápida:
- Ideal para AD, DNS, DHCP, GPO e outras funções do servidor.

---

## 3. PROCESS MONITOR (PROCMON)
**Descrição:** Monitora em tempo real atividades de arquivos, registro, processos e DLLs.

### Comandos (PowerShell):
```powershell
PS> Get-Process
PS> Get-Process | Sort-Object CPU -Descending
PS> Get-Process | Select-Object -First 10
```

### 📋 Dicas de Uso:
- Use filtros para reduzir o volume de eventos.
- **Exemplo de filtro:** `Process Name is explorer.exe`
- **Exemplo de filtro:** `Operation is CreateFile`
- Excelente para investigar erros, lentidão, permissões e falhas de aplicativos.

---

## 4. PROCESS EXPLORER
**Descrição:** Mostra informações detalhadas sobre processos em execução.

### Comandos (PowerShell):
```powershell
PS> Get-Process
PS> Get-Process | Sort-Object CPU -Descending | Select-Object -First 10
PS> Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 10
PS> Stop-Process -Name notepad
PS> Stop-Process -Id 1234
```

### 💡 Dica Rápida:
- Descubra qual processo abriu um arquivo: Use o Process Explorer (`Find` -> `Find Handle or DLL`).

---

## 5. AUTORUNS
**Descrição:** Mostra tudo que inicia automaticamente com o Windows.

### Comandos (PowerShell):
```powershell
PS> Get-CimInstance Win32_StartupCommand
PS> Get-Service
PS> Get-ScheduledTask
PS> Get-WmiObject -Class Win32_Service
```

### 📋 Dicas de Uso:
- Verifique Logon, Services, Scheduled Tasks.
- Identifique programas desnecessários.
- Ajuda a investigar persistência de malware.
- Desative apenas o que você conhece.

---

## 6. TCPVIEW
**Descrição:** Monitora conexões TCP e UDP em tempo real.

### Comandos (PowerShell):
```powershell
PS> Get-NetTCPConnection
PS> Get-NetTCPConnection | Where-Object State -eq "Established"
PS> Get-NetTCPConnection | Where-Object State -eq "Listen"
PS> Get-Process -Id 1234
PS> Test-NetConnection 192.168.1.10 -Port 443
PS> Get-NetTCPConnection -LocalPort 443
```

### 💡 Dica Rápida:
- Descubra quem está usando uma porta:
  ```powershell
  PS> Get-NetTCPConnection -LocalPort 443
  ```

---

## 7. PSEXEC
**Descrição:** Executa processos e comandos em computadores remotos.

### Comandos (CMD):
```cmd
C:\> psexec \SERVIDOR01 cmd
C:\> psexec \SERVIDOR01 powershell.exe
C:\> psexec \SERVIDOR01 ipconfig /all
C:\> psexec \SERVIDOR01 net stop spooler
```

### Alternativa PowerShell:
```powershell
PS> Invoke-Command -ComputerName SERVIDOR01 -ScriptBlock { Restart-Service Spooler }
```

### ⚠️ Dica Rápida:
- Use apenas em máquinas autorizadas. Excelente para suporte remoto e automação.

---

## 8. DISK2VHD
**Descrição:** Converte um disco físico em VHD/VHDX para uso em máquinas virtuais.

### Comandos (PowerShell):
```powershell
PS> Get-Disk
PS> Get-Volume
PS> New-VHD -Path "D:\VM\Servidor.vhdx" -SizeBytes 100GB -Dynamic
```

### 📋 Dicas de Uso:
- Útil para migração P2V (Physical to Virtual).
- Faça backup antes da conversão.
- Verifique BitLocker e drivers.
- Teste a VM antes de desligar o físico.

---

## 9. BGINFO
**Descrição:** Mostra informações importantes diretamente na área de trabalho.

### Comandos (PowerShell):
```powershell
PS> $env:COMPUTERNAME
PS> $env:USERNAME
PS> (Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -notlike "127.*" }).IPAddress
PS> Get-CimInstance Win32_OperatingSystem | Select Caption, Version
```

### 💡 Dica Rápida:
- Exiba: Nome do PC, IP, Usuário, MAC, SO, Memória, Processador e Domínio.

---

## 10. RAMMAP
**Descrição:** Analisa detalhadamente o uso da memória RAM.

### Comandos (PowerShell):
```powershell
PS> Get-CimInstance Win32_PhysicalMemory | Select TotalPhysicalMemory
PS> Get-Counter "\Memory\Available MBytes"
PS> Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 10 Name, Id, WorkingSet
```

### 📋 Dicas de Uso:
- Descubra consumo de memória por processo.
- Identifique memória em cache, standby e kernel.
- Indispensável em problemas de lentidão.

---

## 11. SYSMON
**Descrição:** Monitora atividades do sistema para segurança e investigação.

### Comandos (PowerShell):
```powershell
PS> Get-Service Sysmon*
PS> Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" -MaxEvents 20
PS> Get-WinEvent -LogName "Microsoft-Windows-Sysmon/Operational" | Select -First 20
```

### 📋 Dicas de Uso:
- Monitora criação de processos, conexões de rede, arquivos, registros e atividades suspeitas.
- Integre com SIEM para alertas e análise centralizada.

---

## 12. WINDOWS TERMINAL
**Descrição:** Terminal moderno para CMD, PowerShell, WSL, Azure CLI e muito mais.

### Comandos:
```powershell
PS> pwsh                            # Abrir PowerShell
PS> cmd                             # Abrir CMD
PS> Start-Process powershell -Verb RunAs # PowerShell Admin
PS> Get-ComputerInfo                # Informações do sistema
PS> Enter-PSSession SERVIDOR01      # Sessão remota
```

### 📋 Dicas de Uso:
- Use múltiplas abas e perfis personalizados.
- Suporta PowerShell, CMD, Azure CLI, WSL e Git.
- Aumente sua produtividade no dia a dia.

---

## 🛠️ COMO ESCOLHER A FERRAMENTA CERTA?

| Necessidade / Situação | Ferramenta Recomendada |
| :--- | :--- |
| **Administrar servidores** | Windows Admin Center / RSAT |
| **Processo usando muita CPU/RAM** | Process Explorer / RAMMap |
| **Erros de aplicativo / arquivos** | Process Monitor |
| **Inicialização lenta** | Autoruns |
| **Conexões de rede** | TCPView |
| **Execução remota** | PsExec / PowerShell Remoting |
| **Migração física p/ virtual** | Disk2vhd |
| **Identificação rápida do sistema** | BGInfo |
| **Investigação de segurança** | Sysmon |
| **Terminal e produtividade** | Windows Terminal |

---

## 🔄 FLUXO DE DIAGNÓSTICO RÁPIDO

1. ⚠️ **PROBLEMA IDENTIFICADO**
2. 🔍 **1. VERIFICAR RECURSOS** *(Process Explorer / RAMMap)*
3. 🔎 **2. INVESTIGAR PROCESSO / ARQUIVO** *(Process Monitor / Autoruns)*
4. 🌐 **3. VERIFICAR REDE** *(TCPView)*
5. 🛡️ **4. VERIFICAR EVENTOS / SEGURANÇA** *(Sysmon / Event Viewer)*
6. ⚡ **5. EXECUTAR AÇÃO REMOTA** *(PsExec / PowerShell)*
7. ✅ **SOLUÇÃO**

---

## ✅ BOAS PRÁTICAS

- ✔️ Sempre execute ferramentas como Administrador.
- ✔️ Entenda o problema antes de executar comandos.
- ✔️ Faça backups antes de qualquer alteração.
- ✔️ Use filtros para evitar sobrecarga de informações.
- ✔️ Documente tudo que encontrar.
- ✔️ Automatize tarefas repetitivas com PowerShell.
- ✔️ Mantenha suas ferramentas sempre atualizadas.

### 🌟 DICA DE OURO
> O diferencial não é apenas conhecer as ferramentas, mas saber qual usar, quando usar e interpretar corretamente as informações para resolver o problema com rapidez e segurança.

> **"Conhecimento + Ferramentas + Prática = Suporte mais rápido, eficiente e profissional!"**

---

## 📌 INFORMAÇÕES ADICIONAIS

- ⚠️ **LEMBRE-SE:** Comandos poderosos exigem responsabilidade. Use apenas em ambientes autorizados.
- 💻 **SISTEMAS SUPORTADOS:** Windows 10 / 11 | Windows Server 2012 R2 ou superior
- ⚡ **PRODUTIVIDADE + SEGURANÇA + CONHECIMENTO:** Esses são os pilares de um profissional de TI de alto nível!
