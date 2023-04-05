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

```
root@minikube01 /jnr/terraform/azure (main) # ssh-keygen -t rsa
Generating public/private rsa key pair.
Enter file in which to save the key (/root/.ssh/id_rsa): /root/.ssh/azurekey
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /root/.ssh/azurekey.
Your public key has been saved in /root/.ssh/azurekey.pub.
The key fingerprint is:
SHA256:cFf6iBWPbEwwtM0hnbz/3zbwZG+3iewVgtEabWOu8Qo root@minikube01.nirulabs.com
The key's randomart image is:
+---[RSA 2048]----+
|       .=++..    |
|         X+Bo    |
|      . o @+.*   |
|       o =.oO .  |
|        S .=.o . |
|            =..o.|
|         E . o=..|
|          . o +oB|
|           ..+ **|
+----[SHA256]-----+

```
## ssh with id_rsa not with pub file
```
root@minikube01 /jnr/terraform/azure (main) # ssh -i ~/.ssh/id_rsa adminuser@168.62.205.100
Welcome to Ubuntu 16.04.7 LTS (GNU/Linux 4.15.0-1113-azure x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

UA Infra: Extended Security Maintenance (ESM) is not enabled.

0 updates can be applied immediately.

52 additional security updates can be applied with UA Infra: ESM
Learn more about enabling UA Infra: ESM service for Ubuntu 16.04 at
https://ubuntu.com/16-04

Ubuntu comes with ABSOLUTELY NO WARRANTY, to the extent permitted by
applicable law.

New release '18.04.6 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Wed Apr  5 21:57:36 2023 from 49.37.159.251
```