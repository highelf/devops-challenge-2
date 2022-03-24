# devops challenge 2

## terraform binary
```
required_version = ">= 1.0"
```
# set aws env for running terraform
```
  export AWS_ACCESS_KEY_ID=yyyyyyyyyyyyyyyy
  export AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxx
```
fill yyyy and xxxx with amazon credentials

> set your variables values on terraform.tfvars and use it like this tf plan -var-file=terraform.tfvars
# download providers and modules
```
terraform init
```
# apply the infrastructure
```
terraform apply -var-file=terraform.tfvars
```
