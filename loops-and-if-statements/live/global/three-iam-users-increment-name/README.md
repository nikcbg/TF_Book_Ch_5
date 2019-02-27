# Creating three new IAM users in AWS

This is example Terraform code that creates three new increment IAM users in AWS using `count.index` command. 

-----------------------------------------------------------------------------------------------------------------------
### List of files in the repository:
- main.tf - terraform configuration file that creates three new IAM users in AWS.

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
- go into the subfolder which is this example `cd loops-and-if-statements/live/global/three-iam-users-increment-name`.

------------------------------------------------------------------------------------------------------------------
### Commands needed to create IAM user in AWS.

- execute `terraform init` - to initialize the provider and download the neccesery plugins.
- execute `terraform plan` - to create execution plan for changes to be applied, the output should diplay the following:

```
Terraform will perform the following actions:

  + aws_iam_user.example[0]
      id:            <computed>
      arn:           <computed>
      force_destroy: "false"
      name:          "neo.0"
      path:          "/"
      unique_id:     <computed>

  + aws_iam_user.example[1]
      id:            <computed>
      arn:           <computed>
      force_destroy: "false"
      name:          "neo.1"
      path:          "/"
      unique_id:     <computed>

  + aws_iam_user.example[2]
      id:            <computed>
      arn:           <computed>
      force_destroy: "false"
      name:          "neo.2"
      path:          "/"
      unique_id:     <computed>

Plan: 3 to add, 0 to change, 0 to destroy.

```
- execute `terraform apply` - to apply the desired changes, the output should diplay the following:

```
aws_iam_user.example[2]: Creating...
  arn:           "" => "<computed>"
  force_destroy: "" => "false"
  name:          "" => "neo.2"
  path:          "" => "/"
  unique_id:     "" => "<computed>"
aws_iam_user.example[1]: Creating...
  arn:           "" => "<computed>"
  force_destroy: "" => "false"
  name:          "" => "neo.1"
  path:          "" => "/"
  unique_id:     "" => "<computed>"
aws_iam_user.example[0]: Creating...
  arn:           "" => "<computed>"
  force_destroy: "" => "false"
  name:          "" => "neo.0"
  path:          "" => "/"
  unique_id:     "" => "<computed>"
aws_iam_user.example[1]: Creation complete after 1s (ID: neo.1)
aws_iam_user.example[2]: Creation complete after 1s (ID: neo.2)
aws_iam_user.example[0]: Creation complete after 1s (ID: neo.0)

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

```
- as you can see usernames like `neo.0, neo.1, neo.2` are not very usable so in the next example you can customize them.  
- execute `terraform destroy` - to destroy the existing user, output should diplay the following:

```
aws_iam_user.example[0]: Destroying... (ID: neo.0)
aws_iam_user.example[2]: Destroying... (ID: neo.2)
aws_iam_user.example[1]: Destroying... (ID: neo.1)
aws_iam_user.example[2]: Destruction complete after 2s
aws_iam_user.example[1]: Destruction complete after 2s
aws_iam_user.example[0]: Destruction complete after 2s

Destroy complete! Resources: 3 destroyed.
```


