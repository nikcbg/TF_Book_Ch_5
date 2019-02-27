# Creating multiple webservers in AWS

This folder contains terraform code creates multiple webservers using EC2 instances in AWS. The purpose of this folder is to demonstrate how to use `count` parameter in terraform. 

--------------------------------------------------------------------------------------------------------------
### List of files in this folder:
- main.tf - terraform configuration file that creates multiple webservers.
- variables.tf - terraform configuration file with input variables.

----------------------------------------------------------------------------------------------------------------------
### How to use this part of the repository:
- install `terraform` from [here](https://www.terraform.io/downloads.html).
- setup Amazon Web Services (AWS) account [here](https://aws.amazon.com/).
- configure your AWS access keys [here](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys).
- configure your AWS access keys as environment variables so you can authenticate to your AWS account:

```
export AWS_ACCESS_KEY_ID="your access key id here"
export AWS_SECRET_ACCESS_KEY="your secret access key here"
```
   
- clone the repository to your local computer: `git clone https://github.com/nikcbg/TF_Book_Ch_5`.
- go into the cloned repo on your computer: `cd TF_Book_Ch_5`.
- go into the subfolder which is this example `cd loops-and-if-statements/live/stage/services/multiple-ec2-instances`.

------------------------------------------------------------------------------------------------------------------

### Commands needed to build multiple webservers
- execute `terraform init` - to initialize the provider and download the neccesery plugins.
  
- execute `terraform plan` - to create execution plan for changes to be applied, the output should diplay the following:

```
Terraform will perform the following actions:

+ aws_instance.example[0]
+ aws_instance.example[1]
+ aws_instance.example[2]
  
Plan: 3 to add, 0 to change, 0 to destroy.
```
  
- execute `terraform apply` - to apply the desired changes, the output should diplay the following:

```
Terraform will perform the following actions:

aws_instance.example[0]: Creation complete after 29s (ID: i-0a44e85ad69805f5a)
aws_instance.example[1]: Creation complete after 40s (ID: i-05b8a92108a2ecb32)
aws_instance.example[2]: Creation complete after 40s (ID: i-0fca7c0b47d3bdd5a)

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
```
- execute `terraform destroy` - to destroy the resources you created, the output should diplay the following:
  
```
Terraform will perform the following actions:

- aws_instance.example[0]
- aws_instance.example[1]
- aws_instance.example[2]

Plan: 0 to add, 0 to change, 3 to destroy.

aws_instance.example[0]: Destruction complete after 54s
aws_instance.example[2]: Destruction complete after 1m5s
aws_instance.example[1]: Destruction complete after 1m5s

Destroy complete! Resources: 3 destroyed.
```
