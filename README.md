# easy-ace-box-4-azure

## On Dynatrace Bitbuket

- Ace-Box Readme https://bitbucket.lab.dynatrace.org/projects/ACES/repos/ace-box/browse  
- Ace-Box Readme for Terraform on Azure : https://bitbucket.lab.dynatrace.org/projects/ACES/repos/ace-box/browse/terraform/azure  

## Azure Subscription
- For a free subscription : https://azure.microsoft.com/en-us/free

## Prerequis on your local laptop
- Install Terraform : open PowerShell with admin role and run this cmd - more detail [here](https://learn.hashicorp.com/tutorials/terraform/install-cli)  
	 
      choco install terraform -y
     
- Install the Azure CLI for Windows : : open PowerShell with admin role and run this cmd - more detail [here](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli)
		
      invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi
	    
- Install Git Clone : https://git-scm.com/download/win
			
	
## Ace-Box source 
- From Dynatrace VPN, copie the ace-box source on your local directory

      git clone ssh://git@bitbucket.lab.dynatrace.org/aces/ace-box.git	

  ![image](https://user-images.githubusercontent.com/40337213/121711710-3160ad00-cadb-11eb-8131-ad76e3518644.png)


## Ace-Box configuration
- Create the file **config.yml** on `/ace-box/microk8s`
![image](https://user-images.githubusercontent.com/40337213/121711843-52c19900-cadb-11eb-8312-cd53abd914a0.png)

- with this config, more details [here](https://bitbucket.lab.dynatrace.org/projects/ACES/repos/ace-box/browse/microk8s/config.yml.completetmpl)   
![image](https://user-images.githubusercontent.com/40337213/121711872-59501080-cadb-11eb-8eea-edcb92a8ccd6.png)


## Terraform configuration
- Create the file **terraform.tfvars** on `/ace-box/terraform/azure`
![image](https://user-images.githubusercontent.com/40337213/121712955-98cb2c80-cadc-11eb-96af-3a81e55b6cf2.png)

- with this configuration (example of azure_location : "francecentral", "northeurope", "westeurope", "uksouth" ...)
![image](https://user-images.githubusercontent.com/40337213/121713298-fd868700-cadc-11eb-8cfa-53b7bb2d2b04.png)

     azure_location = "westeurope"

- Open **variables.tf** on `/ace-box/terraform/azure/` to check out the other variables : 

![image](https://user-images.githubusercontent.com/40337213/121713202-e47dd600-cadc-11eb-8f47-5fc5d8b19a8d.png)

## run terraform installation
- Deconnect to the VPN and start a PowerShell (no need to be admin) 

	az login
	
   ![image](https://user-images.githubusercontent.com/40337213/121714815-805c1180-cade-11eb-84bc-2825d239002f.png)

- Run the installation

	cd ace-box/terraform/azure
	ssh-keygen -b 2048 -t rsa -f key
	terraform init
	terraform plan
	terraform apply
	yes	
	

  ![image](https://user-images.githubusercontent.com/40337213/121715828-9dddab00-cadf-11eb-9e15-d5a35e650a2c.png)


## At the end
- After 30 minutes 
  ![image](https://user-images.githubusercontent.com/40337213/121715969-c5347800-cadf-11eb-93f2-74141d8b1822.png)

- VM Access
  ![image](https://user-images.githubusercontent.com/40337213/121715552-4f301100-cadf-11eb-8114-756b6976eafb.png)
	
- DevOps access
![image](https://user-images.githubusercontent.com/40337213/121715601-5d7e2d00-cadf-11eb-9c8f-1738d58fc2ee.png)
	
