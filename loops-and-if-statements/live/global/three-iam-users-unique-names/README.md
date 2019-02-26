# Creating three new unique IAM users in AWS 

This is example Terraform configuration code that creates three unique new IAM users in AWS and gives full access to one of them to CloudWatch if default value set to `true`. 

-----------------------------------------------------------------------------------------------------------------------
### List of files in the repository:
- main.tf - terraform configuration file that creates three new uniqu IAM users in AWS.
- variables.tf - terraform configuration file with input variables.
- output.tf - terraform configuration file with output parameters.

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
- go into the subfolder which is this example `cd loops-and-if-statements/live/global/three-iam-users-unique-names`.

------------------------------------------------------------------------------------------------------------------
### Commands needed to create IAM users in AWS.

- execute `terraform init` - to initialize the provider and download the neccesery plugins.
- execute `terraform plan` - to create execution plan for changes to be applied, the output should diplay the following:

```
Terraform will perform the following actions:

 + aws_iam_policy.cloudwatch_full_access
 + aws_iam_policy.cloudwatch_read_only
 + aws_iam_policy.ec2_read_only
 + aws_iam_user.example[0]
 + aws_iam_user.example[1]
 + aws_iam_user.example[2]
 + aws_iam_user_policy_attachment.ec2_access[0]
 + aws_iam_user_policy_attachment.ec2_access[1]
 + aws_iam_user_policy_attachment.ec2_access[2]
 + aws_iam_user_policy_attachment.neo_cloudwatch_full_access

Plan: 10 to add, 0 to change, 0 to destroy.
```
- execute `terraform apply` - to apply the desired changes, the output should diplay the following:

```
Terraform will perform the following actions:

aws_iam_user.example[0]: Creation complete after 1s (ID: neo)
aws_iam_user.example[1]: Creation complete after 1s (ID: trinity)
aws_iam_user.example[2]: Creation complete after 2s (ID: morpheus)
aws_iam_policy.cloudwatch_full_access: Creation complete after 2s (ID: arn:aws:iam::465704243971:policy/cloudwatch-full access)
aws_iam_policy.cloudwatch_read_only: Creation complete after 2s (ID: arn:aws:iam::465704243971:policy/cloudwatch-read-only)
aws_iam_policy.ec2_read_only: Creation complete after 3s (ID: arn:aws:iam::465704243971:policy/ec2-read-only)
aws_iam_user_policy_attachment.neo_cloudwatch_full_access: Creation complete after 3s (ID: neo-20190226142243159500000001)
aws_iam_user_policy_attachment.ec2_access[2]: Creation complete after 2s (ID: morpheus-20190226142243794100000004)
aws_iam_user_policy_attachment.ec2_access[0]: Creation complete after 2s (ID: neo-20190226142243783000000003)
aws_iam_user_policy_attachment.ec2_access[1]: Creation complete after 2s (ID: trinity-20190226142243777300000002)

Apply complete! Resources: 10 added, 0 changed, 0 destroyed.

Outputs:

all_arns = [
    arn:aws:iam::465704243971:user/neo,
    arn:aws:iam::465704243971:user/trinity,
    arn:aws:iam::465704243971:user/morpheus
]
neo_arn = arn:aws:iam::465704243971:user/neo

```

- execute `terraform destroy` - to destroy the existing users, output should diplay the following:

```
Terraform will perform the following actions:

  - aws_iam_policy.cloudwatch_full_access
  - aws_iam_policy.cloudwatch_read_only
  - aws_iam_policy.ec2_read_only
  - aws_iam_user.example[0]
  - aws_iam_user.example[1]
  - aws_iam_user.example[2]
  - aws_iam_user_policy_attachment.ec2_access[0]
  - aws_iam_user_policy_attachment.ec2_access[1]
  - aws_iam_user_policy_attachment.ec2_access[2]
  - aws_iam_user_policy_attachment.neo_cloudwatch_full_access

Plan: 0 to add, 0 to change, 10 to destroy.

aws_iam_user_policy_attachment.ec2_access[0]: Destruction complete after 1s
aws_iam_user_policy_attachment.ec2_access[2]: Destruction complete after 1s
aws_iam_user_policy_attachment.ec2_access[1]: Destruction complete after 1s
aws_iam_user_policy_attachment.neo_cloudwatch_full_access: Destruction complete after 1s
aws_iam_policy.cloudwatch_read_only: Destruction complete after 1s
aws_iam_policy.cloudwatch_full_access: Destruction complete after 1s
aws_iam_user.example[0]: Destruction complete after 1s
aws_iam_user.example[1]: Destruction complete after 1s
aws_iam_policy.ec2_read_only: Destruction complete after 1s
aws_iam_user.example[2]: Destruction complete after 1s

Destroy complete! Resources: 10 destroyed.
```

