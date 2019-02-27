# TF_Book_Ch_5

### The purpose of the repository is to show examples how terraform works with Loops, if-Statements, if-else-Statements and Zero-downtime deployment.

#### Check the links below for terraform example code and explanation on what the code does in each folder:
-----------------------------------------------------------------------------------------------------------

#### Configuration code that imports IAM user that already exists in AWS 
                        
1.[loops-and-if-statements/live/global/existing-iam-user](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/global/existing-iam-user)- Terraform code that is using the `terraform import` command to import IAM user that already exists in your AWS account.

--------------------------------------------------------------------------------------------------------

#### Configuration code that creates new IAM user in AWS 

2.[loops-and-if-statements/live/global/one-iam-user](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/global/one-iam-user) - Terraform code that creates a new IAM user in AWS.

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates three new IAM users in AWS 
                    
3.[loops-and-if-statements/live/global/three-iam-users-increment-name](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/global/three-iam-users-increment-name) - Terraform configuration code that creates three increment new IAM users in AWS using `count.index` command. 

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates three new unique IAM users in AWS 
                    
4.[loops-and-if-statements/live/global/three-iam-users-unique-names](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/global/three-iam-users-unique-names) - Terraform configuration code that creates three unique new IAM users in AWS and gives full access to one of them to CloudWatch if default value set to `true`. 

------------------------------------------------------------------------------------------------------------------

#### Configuration code for terraform module for loops-and-if-statements folder

5.[loops-and-if-statements/modules/services/webserver-cluster](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/modules/services/webserver-cluster) - Terraform configuration code that creates webservers cluster and load balancer. This code will be used as module.

----------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates MySQL database in AWS (production environment)
                    https://github.com/nikcbg/TF_Book_Ch_5/tree/master/zero-downtime-deployment/live/stage/data-stores/mysql
6.[loops-and-if-statements/live/prod/data-stores/mysql](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/prod/data-stores/mysql) - Terraform configuration code in prod folder that creates MySQL database which talks to webservers cluster.

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates webservers cluster and load balancer in AWS using a module (production environment).
                    
7.[loops-and-if-statements/live/prod/data-stores/mysql](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/prod/data-stores/mysql) - Terraform configuration code in prod folder that uses the code in module folder to create webservers cluster and load balancer in AWS.

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates MySQL database in AWS (staging environment)
                    
8.[loops-and-if-statements/live/prod/data-stores/mysql](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/prod/data-stores/mysql) - Terraform configuration code in stage folder that creates MySQL database which talks to webservers cluster.

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates webservers cluster and load balancer in AWS using a module (staging environment).
                    
9.[loops-and-if-statements/live/stage/services/webserver-cluster](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/stage/services/webserver-cluster) - Terraform configuration code in stage folder that uses the code in module folder to create webservers cluster and load balancer in AWS.

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates multiple webservers in AWS
                    
10.[loops-and-if-statements/live/stage/services/multiple-ec2-instances](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/stage/services/multiple-ec2-instances) - Terraform configuration code that creates multiple webservers using EC2 instances in AWS. The purpose of this folder is to demonstrate how to use `count` parameter in terraform.

------------------------------------------------------------------------------------------------------------------

#### Configuration code for terraform module for zero-downtime-deployment

11.[zero-downtime-deployment/modules/services](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/zero-downtime-deployment/modules/services/webserver-cluster) - Terraform configuration code that creates webservers cluster and load balancer. This code will be used as module. The webservers cluster is able to do a zero-downtime deployment when you update any of it's properties.

----------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates MySQL database in AWS (production environment)
                    
12.[loops-and-if-statements/live/prod/data-stores/mysql](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/prod/data-stores/mysql) - Terraform configuration code in prod folder that creates MySQL database which talks to webservers cluster.

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates webservers cluster and load balancer in AWS using a module (production environment).
                    
13.[loops-and-if-statements/live/prod/data-stores/mysql](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/loops-and-if-statements/live/prod/data-stores/mysql) - Terraform configuration code in prod folder that uses the code in module folder to create webservers cluster and load balancer in AWS. The code in this folder will do a zero-downtime deployment whenever you change any parameters in this folder code.

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates MySQL database in AWS (staging environment)
                    
14.[zero-downtime-deployment/live/stage/data-stores/mysql](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/zero-downtime-deployment/live/stage/data-stores/mysql) - Terraform configuration code in stage folder that creates MySQL database which talks to webservers cluster.

------------------------------------------------------------------------------------------------------------------

#### Configuration code that creates webservers cluster and load balancer in AWS using a module (staging environment).
                    
15.[zero-downtime-deployment/live/stage/services/webserver-cluster](https://github.com/nikcbg/TF_Book_Ch_5/tree/master/zero-downtime-deployment/live/stage/services/webserver-cluster) - Terraform configuration code in prod folder that uses the code in module folder to create webservers cluster and load balancer in AWS. The code in this folder will do a zero-downtime deployment whenever you change any parameters in this folder code.

------------------------------------------------------------------------------------------------------------------
