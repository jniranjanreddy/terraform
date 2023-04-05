## How to authenticate Azure for Terraofrm IAC.
```
Below are the methods to authenticate with Azure

Authenticate via a Microsoft account from Cloud Shell (using Bash or PowerShell)
Authenticate via a Microsoft account from Windows (using Bash or PowerShell)
Create a service principal using the Azure CLI
Create a service principal using Azure PowerShell
Specify service principal credentials in environment variables
Specify service principal credentials in a Terraform provider block

az login # once logged in

root@minikube01 ~ # az account show
{
  "environmentName": "AzureCloud",
  "homeTenantId": "84f1e4ea-8554-43e1-8709-f0b8589ea118",
  "id": "80ea84e8-afce-4851-928a-9e2219724c69",
  "isDefault": true,
  "managedByTenants": [],
  "name": "P5-Real Hands-On Labs",
  "state": "Enabled",
  "tenantId": "84f1e4ea-8554-43e1-8709-f0b8589ea118",
  "user": {
    "name": "cloud_user_p_cb76a9a5@realhandsonlabs.com",
    "type": "user"
  }
}


```
