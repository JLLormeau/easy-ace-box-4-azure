Set-Variable -Name "RG" -Value "ace-box-cloud-rg-XXXX"
az login
cd ace-box/terraform/azure
#ssh-keygen -b 2048 -t rsa -f key
terraform init
terraform plan
terraform apply -auto-approve
Set-Variable -Name "IP" -Value $(az vm show -d -g $RG -n ace-box --query publicIps -o tsv)
echo "ssh -i ./key ace@$(az vm show -d -g $RG -n ace-box --query publicIps -o tsv)"
Start-Process "http://dashboard.$IP.nip.io"
ssh -o StrictHostKeyChecking=no -i ./key ace@$IP
az vm deallocate -g $RG -n "ace-box"
exit
pause
