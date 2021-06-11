# easy-ace-box-4-azure

## Azure Subscription
- For a free subscription : https://azure.microsoft.com/en-us/free

## Prerequis on your local laptop
- Install Terraform with PowerShell with admin role - more detail [here](https://learn.hashicorp.com/tutorials/terraform/install-cli)  
	 
       choco install terraform -y
     
- Install the Azure CLI for Windows with PowerShell with admin role - more detail [here](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli)
		
      invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
	    
- Install Git Clone : https://git-scm.com/download/win
			
	
## With Dynatrace VPN 	
- Copie the ace-box source on your local directory

	 git clone ssh://git@bitbucket.lab.dynatrace.org/aces/ace-box.git
		
		
## Deconnect to the VPN and start a PowerShell (no need to be admin) 

	
	Config ace box
	Config.yml 
	
	
	
	
	
	
	Config Azure
	Create this file terraform.tfvars
	
	With this config 
	
	azure_location = "westeurope"
	
	Other region for example : "francecentral", "northeurope", "uksouth"
	
	Check out the othere terraform variables: 
	
	
	
	
	
	Run  terraform 
	
	
	At the end
	After 30 minutes 
	
	
	
	VM Access
	
	
	DevOps access
	
