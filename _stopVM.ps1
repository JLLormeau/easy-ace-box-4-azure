Set-Variable -Name "RG" -Value "ace-box-cloud-rg-XXXX"	
az login
az vm deallocate -g $RG -n "ace-box"
pause
