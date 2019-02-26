# Creating new IAM user in AWS

This is example Terraform code that creates new IAM user in AWS. 

-----------------------------------------------------------------------------------------------------------------------
### List of files in the repository:
- main.tf - terraform configuration file that creates new IAM user in AWS.

----------------------------------------------------------------------------------------------------------------------
### How to use this repository:
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
- go into the subfolder which is this example `cd loops-and-if-statements/live/global/existing-iam-use`.

------------------------------------------------------------------------------------------------------------------
### Commands needed to create IAM user in AWS.

- execute `terraform init` - to initialize the provider and download the neccesery plugins.
- execute `terraform plan` - to create execution plan for changes to be applied, the output should diplay the following:

```
Terraform will perform the following actions:

  + aws_iam_user.example
      id:            <computed>
      arn:           <computed>
      force_destroy: "false"
      name:          "neo"
      path:          "/"
      unique_id:     <computed>

Plan: 1 to add, 0 to change, 0 to destroy.

```
- execute `terraform apply` - to apply the desired changes, the output should diplay the following:

```
aws_iam_user.example: Creating...
  arn:           "" => "<computed>"
  force_destroy: "" => "false"
  name:          "" => "neo"
  path:          "" => "/"
  unique_id:     "" => "<computed>"
aws_iam_user.example: Creation complete after 1s (ID: neo)

```
- execute `terraform destroy` - to destroy the existing user, output should diplay the following:

```
aws_iam_user.example: Destroying... (ID: neo)
aws_iam_user.example: Destruction complete after 2s

Destroy complete! Resources: 1 destroyed.
```


