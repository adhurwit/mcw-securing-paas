﻿#######################################################################################################
#
#  Be sure to edit the azure-ky-parameters.json file to have your azure key vault resource id path!!!
#
#  NOTE: you can not directly reference in the template, only via parameter file - https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-keyvault-parameter
#
#######################################################################################################

#this logs you in...
Login-AzureRmAccount;

#change this to your extracted folder path
$path = "C:\github\mcw-securing-paas\AzureTemplate";

$resourceGroupName = "YOUR_RESOURCE_GROUP";

#for output testing...
#New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile "$path\keyvaulttest.json" -TemplateParameterFile "$path\azure-kv-parameters.json"

#for production...
New-AzureRmResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile "$path\azure-kv-deploy.json" -TemplateParameterFile "$path\azure-kv-parameters.json"