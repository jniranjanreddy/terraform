## Important Commands:-

Other IAC

ARM Templates - For Azure
Azure - Blue Prints
Cloudformation - Only for AWS
Cloud Support Manager - Google Cloud
Terrafrom - Support many Cloud Service Providers.



## Format and Validate Terraform code
```
terraform fmt                      # format code per HCL canonical standard
terraform validate                 # validate code for syntax
terraform validate -backend=false  # validate code skip backend validation
```
## Initialize your Terraform working directory
```
terraform init                       # initialize directory, pull down providers
terraform init -get-plugins=false    # initialize directory, do not download plugins
terraform init -verify-plugins=false # initialize directory, do not verify plugins for Hashicorp signature
```
## Plan, Deploy and Cleanup Infrastructure
```
terraform apply --auto-approve                       # apply changes without being prompted to enter “yes”
terraform destroy --auto-approve                     # destroy/cleanup deployment without being prompted for “yes”
terraform plan -out plan.out                         # output the deployment plan to plan.out
terraform apply plan.out                             # use the plan.out plan file to deploy infrastructure
terraform plan -destroy                              # outputs a destroy plan
terraform apply -target=aws_instance.my_ec2          # only apply/deploy changes to the targeted resource
terraform apply -var my_region_variable=us-east-1    # pass a variable via command-line while applying a configuration
terraform apply -lock=true                           # lock the state file so it can’t be modified by any other Terraform apply or modification action(possible only where backend allows locking)
terraform apply refresh=false                        # do not reconcile state file with real-world resources(helpful with large complex deployments for saving deployment time)
terraform apply --parallelism=5                      # number of simultaneous resource operations
terraform refresh                                    # reconcile the state in Terraform state file with real-world resources
terraform providers                                  # get information about providers used in current configuration
```
## Terraform Workspaces
```
terraform workspace new mynewworkspace       # create a new workspace
terraform workspace select default           # change to the selected workspace
terraform workspace list                     # list out all workspaces
```
## Terraform State Manipulation
```
terraform state show aws_instance.my_ec2                                # show details stored in Terraform state for the resource
terraform state pull > terraform.tfstate                                # download and output terraform state to a file
terraform state mv aws_iam_role.my_ssm_role module.custom_module        # move a resource tracked via state to different module
terraform state replace-provider hashicorp/aws registry.custom.com/aws  # replace an existing provider with another
terraform state list                                                    # list out all the resources tracked via the current state file
terraform state rm  aws_instance.myinstace                              # unmanage a resource, delete it from Terraform state file
```
## Terraform Import And Outputs
```
terraform import aws_instance.new_ec2_instance i-abcd1234              # import EC2 instance with id i-abcd1234 into the Terraform resource named “new_ec2_instance” of type “aws_instance”
terraform import 'aws_instance.new_ec2_instance[0]' i-abcd1234         # same as above, imports a real-world resource into an instance of Terraform resource
terraform output                                                       # list all outputs as stated in code
terraform output instance_public_ip                                    # list out a specific declared output
terraform output -json                                                 # list all outputs in JSON format
```
## Terraform Miscelleneous commands
```
terraform version                                                      # display Terraform binary version, also warns if version is old
terraform get -update=true                                             # download and update modules in the “root” module.
```
## Terraform Console(Test out Terraform interpolations)
```
echo 'join(",",["foo","bar"])' | terraform console                     # echo an expression into terraform console and see its expected result as output
echo '1 + 5' | terraform console                                       # Terraform console also has an interactive CLI just enter “terraform console”
echo "aws_instance.my_ec2.public_ip" | terraform console               # display the Public IP against the “my_ec2” Terraform resource as seen in the Terraform state file
```
## Terraform Graph(Dependency Graphing)
```
terraform graph | dot -Tpng > graph.png    #  produce a PNG diagrams showing relationship and dependencies between Terraform resource in your configuration/code
```
## Terraform Taint/Untaint(mark/unmark resource for recreation -> delete and then recreate)
```
terraform taint aws_instance.my_ec2     # taints resource to be recreated on next apply
terraform untaint aws_instance.my_ec2   # Remove taint from a resource
terraform force-unlock LOCK_ID          # forcefully unlock a locked state file, LOCK_ID provided when locking the State file beforehand
```
## Terraform Cloud
```
terraform login  # obtain and save API token for Terraform cloud
terraform logout # Log out of Terraform Cloud, defaults to hostname app.terraform.io
```











===================================
terraform init

terraform validate # to validate file

terraform plan

terraform apply # Deploy the Code

terraform destroy # remose the resources

terraform show

terraform apply -auto-approve

terraform fmt

terraform taint

terraform get

terraform graph # Graphviz Online

terraform apply --target=

terraform apply -var="region=us-easet01"

terraform apply -var-file="myproject.tfvars"

export TF_VAR_region=us-esat01
```






=============
```
Terraformming 
-----------------------
Note: This is only for AWS
If you have an existing AWS accountl for examples with existing components like S3 buckets, SNS, VPC … You can use Terraforming tool, a tool written in Ruby, which extracts existing AWS resources and converts it to Terraform files!

Installation of terraforming

1.sudo apt install ruby or $ sudo yum install ruby
2.gem install terraforming
3.Configuring the creds

$export AWS_ACCESS_KEY_ID="an_aws_access_key"
$ export AWS_SECRET_ACCESS_KEY="a_aws_secret_key"
$ export AWS_DEFAULT_REGION="eu-central-1

else

Configure the the creds using aws-cli
$ cat ~/.aws/credentials
[aurelie]
aws_access_key_id = xxx
aws_secret_access_key = xxx
aws_default_region = eu-central-1

terraforming s3 --profile aurelie


4.Command Usage
root@multipurpose:~/terraform/vpc# terraforming vpc
resource "aws_vpc" "vpc-0e312565" {
    cidr_block           = "172.31.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support   = true
    instance_tenancy     = "default"

    tags {
    }
}

Another example
terraforming s3 > aws_s3.tf

root@multipurpose:~/terraform/vpc# terraforming --help
Commands:
  terraforming alb             # ALB
  terraforming asg             # AutoScaling Group
  terraforming cwa             # CloudWatch Alarm
  terraforming dbpg            # Database Parameter Group
  terraforming dbsg            # Database Security Group
  terraforming dbsn            # Database Subnet Group
  terraforming ddb             # DynamoDB
  terraforming ec2             # EC2
  terraforming ecc             # ElastiCache Cluster
  terraforming ecsn            # ElastiCache Subnet Group
  terraforming efs             # EFS File System
  terraforming eip             # EIP
  terraforming elb             # ELB
  terraforming help [COMMAND]  # Describe available commands or one specific command
  terraforming iamg            # IAM Group
  terraforming iamgm           # IAM Group Membership
  terraforming iamgp           # IAM Group Policy
  terraforming iamip           # IAM Instance Profile
  terraforming iamp            # IAM Policy
  terraforming iampa           # IAM Policy Attachment
  terraforming iamr            # IAM Role
  terraforming iamrp           # IAM Role Policy
  terraforming iamu            # IAM User
  terraforming iamup           # IAM User Policy
  terraforming igw             # Internet Gateway
  terraforming kmsa            # KMS Key Alias
  terraforming kmsk            # KMS Key
  terraforming lc              # Launch Configuration
  terraforming nacl            # Network ACL
  terraforming nat             # NAT Gateway
  terraforming nif             # Network Interface
  terraforming r53r            # Route53 Record
  terraforming r53z            # Route53 Hosted Zone
  terraforming rds             # RDS
  terraforming rs              # Redshift
  terraforming rt              # Route Table
  terraforming rta             # Route Table Association
  terraforming s3              # S3
  terraforming sg              # Security Group
  terraforming sn              # Subnet
  terraforming snss            # SNS Subscription
  terraforming snst            # SNS Topic
  terraforming sqs             # SQS
  terraforming vgw             # VPN


Terraforming
--------------

yum install ruby
gem install terraforming
export AWS_REGION=<mention the region>
/usr/local/bin/terraforming  ec2
<<<<<<< This will populate all the terraform data in that region>>>


#To get the data in state file. 
/usr/local/bin/terraforming ec2 --tfstate > ec2.tfstate

#VPC file
/usr/local/bin/terraforming vpc --tfstate > vpc.tfstate

#subnet 
/usr/local/bin/terraforming sn --tfstate > subnet.tfstate

#Route-Table
/usr/local/bin/terraforming rt --tfstate > rt.tfstate



```
