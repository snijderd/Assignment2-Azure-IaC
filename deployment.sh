#Create a resource group on Azure
az group create --name crudapp-rg --location eastus


#Deploy ACR
az deployment group create --resource-group crudapp-rg --template-file acr.bicep 

#log in to ACR
az acr login --name acrds

#Build an push image
docker build -t mycrudapp:latest .
docker tag mycrudapp acrds.azurecr.io/mycrudapp:latest
docker push acrds.azurecr.io/mycrudapp:latest



#Deploy ACI
az deployment group create --resource-group crudapp-rg --template-file aci.bicep