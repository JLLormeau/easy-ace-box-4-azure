# easy-ace-box-4-azure

## On Dynatrace Bitbuket

- Ace-Box Readme https://bitbucket.lab.dynatrace.org/projects/ACES/repos/ace-box/browse  
- Ace-Box Readme for Terraform on Azure : https://bitbucket.lab.dynatrace.org/projects/ACES/repos/ace-box/browse/terraform/azure  

## Azure Subscription
- You need a Azure subscription : https://azure.microsoft.com/en-us/free

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

- with this configuration (example of azure_location : `francecentral`, `northeurope`, `westeurope`, `uksouth` ...)
 ![image](https://user-images.githubusercontent.com/40337213/121713298-fd868700-cadc-11eb-8cfa-53b7bb2d2b04.png)

      azure_location = "westeurope"

- Open **variables.tf** on `/ace-box/terraform/azure/` to check out the other variables : 
 ![image](https://user-images.githubusercontent.com/40337213/121717289-4cceb680-cae1-11eb-863f-fe7721f2bd0e.png)


## Intallation : run Terraform on Azure
- To run the installation 
 1) disconnect to the VPN
 2) open a PowerShell (no need to be admin for this tep) 
 3) go to the directory ace-box\terraform\azure
 4) run these cmd
 
        az login
        ssh-keygen -b 2048 -t rsa -f key
        terraform init
        terraform plan
        terraform apply -auto-approve	

- You will be connected to your Azure Subscription with a validation from your browser automatically open for you. Once the connexion is OK, you will have this result : 
   ![image](https://user-images.githubusercontent.com/40337213/121784333-bf0fcb80-cbb3-11eb-8945-129d218f099c.png)
   
- Result when you run the installation 
   ![image](https://user-images.githubusercontent.com/40337213/121724917-dafa6b00-cae8-11eb-8ea7-f7825e1fb31c.png)

   
## Acces to the ace-box

- After 30 minutes, the ace-box is installed :  
  ![image](https://user-images.githubusercontent.com/40337213/121715969-c5347800-cadf-11eb-93f2-74141d8b1822.png)

- VM Access
  ![image](https://user-images.githubusercontent.com/40337213/121721875-054a2980-cae5-11eb-9633-2ba28cc72514.png) 
 	
- DevOps access
 ![image](https://user-images.githubusercontent.com/40337213/121715601-5d7e2d00-cadf-11eb-9c8f-1738d58fc2ee.png)
	
	
## Stop the VM on Azure 
- When you stopping Azure you a part of the VM cost (you continue to pay the storage)

![image](https://user-images.githubusercontent.com/40337213/121721022-10e92080-cae4-11eb-9a3e-71b2b6a2038f.png)

## Delete the resource on Azure 
- When you have finished with the ace-box, think to delete the **Resource-Group** to stop paying

![image](https://user-images.githubusercontent.com/40337213/121721363-7806d500-cae4-11eb-94d1-4ef2ba871145.png)

## Installation automatised
Use the script attached here to automatically installez and stop your Azure Ace Box
