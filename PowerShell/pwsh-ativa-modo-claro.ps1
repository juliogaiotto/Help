# Define o caminho das configurações de tema no Registro do usuário atual
$RegistryPath = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize"

# 0 = Modo Escuro / 1 = Modo Claro
# Altera o tema do Sistema (Barra de tarefas, Menu Iniciar, etc.)
Set-ItemProperty -Path $RegistryPath -Name "SystemUsesLightTheme" -Value 1 -Type DWord -Force

# Altera o tema dos Aplicativos (Explorador de Arquivos, Configurações, etc.)
Set-ItemProperty -Path $RegistryPath -Name "AppsUseLightTheme" -Value 1 -Type DWord -Force

# Força a atualização do sistema reiniciando o processo do Windows Explorer
Stop-Process -Name explorer -Force

Write-Host "Modo Escuro ativado com sucesso!" -ForegroundColor Yellow -BackgroundColor Black