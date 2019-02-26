# Existing IAM user example

This is example Terraform code that creates an IAM user in AWS if none already exist. The goal of this example is to practice using the `terraform import` to import IAM user that already exists in your AWS account.  

-----------------------------------------------------------------------------------------------------------------------
### List of files in the repository:
- main.tf - terraform configuration file that imports IAM user that already exists in AWS.
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
### Commands needed to import IAM user that already exists in AWS.

- you need to fill in the name of an IAM user that already exists in your AWS account:

```
resource "aws_iam_user" "existing_user" {
  name = EXISTING_IAM_USER_NAME
}

```

- execute `terraform init` - to initialize the provider and download the neccesery plugins.
- execute terraform plan - to create execution plan for changes to be applied, the output should diplay the following:
- execute `terraform apply` - to apply the desired changes, the output should diplay the following:
  - you supose to get an error because the user already exists:

```
Error: Error applying plan:

1 error(s) occurred:

* aws_iam_user.existing_user: 1 error(s) occurred:

* aws_iam_user.existing_user: Error creating IAM User existing_user: EntityAlreadyExists: 
User with name existing_user already exists.
        status code: 409, request id: 9dfd2662-39c3-11e9-b34f-056f8d6936da
```
- youo need to use `import` command to import the existing user:
- execute `terraform import aws_iam_user.existing_user your_existing_user` - to import the existing user, output should diplay the following:

```
aws_iam_user.existing_user: Import complete!
  Imported aws_iam_user (ID: existing_use)
aws_iam_user.existing_user: Refreshing state... (ID: existing_use)

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.

```
