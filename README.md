# easy-ace-box-4-azure

## On Dynatrace Bitbuket

- Ace-Box Readme https://bitbucket.lab.dynatrace.org/projects/ACES/repos/ace-box/browse  
- Ace-Box Readme for Terraform on Azure : https://bitbucket.lab.dynatrace.org/projects/ACES/repos/ace-box/browse/terraform/azure  

## Azure Subscription
- For a free subscription : https://azure.microsoft.com/en-us/free

## Prerequis on your local laptop
- Install Terraform : open PowerShell with admin role and run this cmd - more detail [here](https://learn.hashicorp.com/tutorials/terraform/install-cli)  
	 
      choco install terraform -y
     
- Install the Azure CLI for Windows : open PowerShell with admin role and run this cmd - more detail [here](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli)
		
      invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
	    
- Install Git Clone : https://git-scm.com/download/win
			
	
## Ace-Box source 
- Git Clone the ace-box on your local directory (you need to be connected to the VPN)

      git clone ssh://git@bitbucket.lab.dynatrace.org/aces/ace-box.git	

  ![image](https://user-images.githubusercontent.com/40337213/121711710-3160ad00-cadb-11eb-8131-ad76e3518644.png)


## Ace-Box configuration
- Create the file **config.yml** on `/ace-box/microk8s`
 ![image](https://user-images.githubusercontent.com/40337213/121717037-0ed19280-cae1-11eb-885e-8efed7986645.png)


- with this config, more details [here](https://bitbucket.lab.dynatrace.org/projects/ACES/repos/ace-box/browse/microk8s/config.yml.completetmpl)   
 ![image](https://user-images.githubusercontent.com/40337213/121711872-59501080-cadb-11eb-8eea-edcb92a8ccd6.png)


## Terraform configuration
- Create the file **terraform.tfvars** on `/ace-box/terraform/azure`
 ![image](https://user-images.githubusercontent.com/40337213/121716930-ecd81000-cae0-11eb-81f9-ea5e7c8f6e83.png)

- with this configuration (example of azure_location : "francecentral", "northeurope", "westeurope", "uksouth" ...)
 ![image](https://user-images.githubusercontent.com/40337213/121713298-fd868700-cadc-11eb-8cfa-53b7bb2d2b04.png)

     azure_location = "westeurope"

- Open **variables.tf** on `/ace-box/terraform/azure/` to check out the other variables : 
 ![image](https://user-images.githubusercontent.com/40337213/121717289-4cceb680-cae1-11eb-863f-fe7721f2bd0e.png)


## run terraform installation
- Connect to your Azure Subscription with Azure Cli from your local PowerShell (no need to be admin) - and prefer to be disconnected to the VPN :

      az login

- Validate the connexion on your browser automatically open for you. At the end of the connexion you will have the result :  
    ![image](https://user-images.githubusercontent.com/40337213/121714815-805c1180-cade-11eb-84bc-2825d239002f.png)

- Run the installation  

      cd ace-box/terraform/azure
      ssh-keygen -b 2048 -t rsa -f key
      terraform init
      terraform plan
      terraform apply
      yes	
	
   ![image](https://user-images.githubusercontent.com/40337213/121720489-75f04680-cae3-11eb-83a9-b105e4af56cd.png)

   
## At the end
- After 30 minutes 
  ![image](https://user-images.githubusercontent.com/40337213/121715969-c5347800-cadf-11eb-93f2-74141d8b1822.png)

- VM Access
  ![image](https://user-images.githubusercontent.com/40337213/121715552-4f301100-cadf-11eb-8114-756b6976eafb.png)
	
- DevOps access
 ![image](https://user-images.githubusercontent.com/40337213/121715601-5d7e2d00-cadf-11eb-9c8f-1738d58fc2ee.png)
	
