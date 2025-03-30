Welcome!

This repository holds all the contents you need to deploy your own CRUD app to Azure. 

There are 4 different important files:
- Dockerfile
- acr.bicep
- aci.bicep
- deployment.sh

    1)  The Dockerfile - This file is very important, we use this file to create an docker image. This image holds the crutial  information for a CRUD app to be able to function and react correctly.

    2)  The acr.bicep file - This file creates a Azure Container Registry, in this registry we will store the docker image.

    3)  The aci.bicep file - This file creates a Azure Container Instance, Application Gateway, Logging system, Network Security Groups, Subnets and a public IP. This file is also very customizeable, at the top of the file there are a lot of parameters. These parameters can be renamed and will not give any problems within the deployment of your application.

    4)  The deployment.sh - This file is a bash script that fully automates the setup of the CRUD app in Azure. This means that when this file is executed, there is no need for extra configuration.

Steps to deploy the CRUD app on Azure:
1) Copy the git repository to your own device, using the following command: 
        Git clone ""

2) Log into your Azure account using the CLI:
        az login

        => there will be a pop up, select your desired account.

3) Execute the deployment.sh bash script

4) Navigate to your resource group on Azure Portal (website)

5) Click on Public IP and browse to it

6) Enjoy your application!