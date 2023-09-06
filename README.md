# AutoScaling-group-with-warmpool-in-terraform
An AWS Autoscaling group with warmpool via terraform 

## Overview

This Terraform module creates an AWS Auto Scaling Group (ASG) with warm pool configuration.

## Features

- Creates an ASG with customizable settings.
- Supports launch templates for instance configuration.
- warm pool configuration to maintain a pool of running instances.



## Inputs

| Name | Description | Type | Default |
|------|-------------|------|---------|
| <a name="identifier"></a> [identifier](#identifier) | n/a | `string` | `""` |
| <a name="min_size"></a> [min_size](#min_size) | n/a | `number ` | `` |
| <a name="max_size"></a> [max_size](#max_size) | n/a | `number` | `` |
| <a name="desired_capacity"></a> [desired_capacity](#desired_capacity) | n/a | `number` | `` |
| <a name="default_cooldown"></a> [default_cooldown](#default_cooldown) | n/a | `number` | `` |
| <a name="subnets_ids"></a> [subnets_ids](#subnets_ids) | n/a | `list` | `[]` |
| <a name="warm_pool"></a> [warm_pool](#warm_pool) | map with two objects `pool_state`  &  `min_size` | `map` | `{}` |
| <a name="launch_template"></a> [launch_template](#launch_template) | map with two objects `id`  &  `version` | `map` | `{}` |

## Clone the repository
```bash
git clone https://github.com/Usama222000/AutoScaling-group-with-warmpool-in-terraform.git
cd AutoScaling-group-with-warmpool-in-terraform
}
```
## Usage

```hcl
module "ASG" {
  source = "./modules/ASG"
  ASG_vars = var.ASG_vars
}
```
## Initialize Terraform:
```hcl
terraform init
```
## Apply the Terraform
```hcl
terraform apply --var-file=./config/dev.tfvars
```
## Outputs

- `autoscaling_group_name`: The name of the Auto Scaling Group.

