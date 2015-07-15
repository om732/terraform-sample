Terraform AWS Sample
====

Setup to AWS by terraform.

## Description

Setup to;

- Key Pairs
- VPC
- Subnets
- Internet Gateway
- Route Tables
- Security Groups
- EC2
- ELB

## Setup

Write to variables.tf file your aws credentials and your SSH public key.

```
variable "aws_access_key" {
    description = "AWS access key"
    default = "xxxxxxxxxxxxxxxxxxxx"
}

variable "aws_secret_key" {
    description = "AWS secret key"
    default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}

variable "aws_region" {
    description = "AWS region"
    default = "ap-northeast-1"
}

variable "public_key" {
    description = "SSH key"
    default = "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}
```

## Run

Check

```
$ terraform plan
```

Execute

```
$ terraform apply
```
