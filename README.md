# TF_Book_Ch_5

### The purpose of the repository is to show examples how terraform works with Loops, if-Statements, if-else-Statements and Zero-downtime deployment.

#### Check the links below for terraform example code and explanation on what the code does in each folder:
-----------------------------------------------------------------------------------------------------------

#### Configuration code that imports IAM user that already exists in AWS 
                        
1. [loops-and-if-statements/live/global/existing-iam-user](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/global/existing-iam-user)- Terraform code that is using the `terraform import` command to import IAM user that already exists in your AWS account.

--------------------------------------------------------------------------------------------------------

#### Configuration code that creates new IAM user in AWS 

2. [loops-and-if-statements/live/global/one-iam-user](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/global/one-iam-user) - Terraform code that creates new IAM user in AWS.

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates three new IAM users in AWS 
                    
3. [loops-and-if-statements/live/global/three-iam-users-increment-name](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/global/three-iam-users-increment-name) - Terraform configuration code that creates three increment new IAM users in AWS. 

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates three new unique IAM users in AWS 
                    
4. [loops-and-if-statements/live/global/three-iam-users-unique-names](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/global/three-iam-users-unique-names) - Terraform configuration code that creates three unique new IAM users in AWS and gives full access to one of them to CloudWatch if default value set to `true`. 

------------------------------------------------------------------------------------------------------------------

