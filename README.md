# ansible-windowsnode

## run
```ansible-playbook -i hosts prepare-openshift.yaml```

### Resources
Connect to a legacy SMB share to read/write files, not use as a dynamic provisioner


Use this to install Docker or Containerd(WMCO 6.0)
https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/set-up-environment?tabs=dockerce#windows-server-1

Test win docker with
docker pull mcr.microsoft.com/windows/nanoserver:ltsc2022
https://docs.microsoft.com/en-us/virtualization/windowscontainers/quick-start/run-your-first-container

Then run troubleshooter
Invoke-WebRequest https://aka.ms/Debug-ContainerHost.ps1 -UseBasicParsing | Invoke-Expression

From <https://docs.microsoft.com/en-us/virtualization/windowscontainers/troubleshooting> 



BYOB
New-NetFirewallRule -DisplayName "ContainerLogsPort" -LocalPort 10250 -Enabled True -Direction Inbound -Protocol TCP -Action Allow -EdgeTraversalPolicy Allow

From <https://docs.openshift.com/container-platform/4.10/windows_containers/creating_windows_machinesets/creating-windows-machineset-vsphere.html> 


Add key to server
# Get the public key file generated previously on your client $authorizedKey = Get-Content -Path $env:USERPROFILE\.ssh\id_ed25519.pub # Generate the PowerShell to be run remote that will copy the public key file generated previously on your client to the authorized_keys file on your server $remotePowershell = "powershell Add-Content -Force -Path $env:ProgramData\ssh\administrators_authorized_keys -Value '$authorizedKey';icacls.exe ""$env:ProgramData\ssh\administrators_authorized_keys"" /inheritance:r /grant ""Administrators:F"" /grant ""SYSTEM:F""" # Connect to your server and run the PowerShell using the $remotePowerShell variable ssh username@domain1@contoso.com $remotePowershell

From <https://docs.microsoft.com/en-us/windows-server/administration/openssh/openssh_keymanagement>


