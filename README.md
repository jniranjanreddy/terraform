## Important Commands:-

## Format and Validate Terraform code
``
terraform fmt #format code per HCL canonical standard
terraform validate #validate code for syntax
terraform validate -backend=false #validate code skip backend validation


```
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
