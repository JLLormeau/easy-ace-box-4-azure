Set-Variable -Name "RG" -Value "ace-box-cloud-rg-XXXX"	
az login
az group delete -n $RG
pause