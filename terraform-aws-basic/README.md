# Terraform AWS Infrastructure Setup

This Terraform setup provisions an EC2 instance in AWS.

## Files

- `main.tf`: Defines an EC2 instance.
- `variables.tf`: Contains variables for the AWS region.
- `outputs.tf`: Outputs the instance ID and public IP.

## Steps

1. Install [Terraform](https://www.terraform.io/downloads.html).
2. Run the following commands:
   ```bash
   terraform init
   terraform apply