# network
This module deploys all the network resources.
We deploy on two availability zones

## What gets deployed
|Resource         | Description
|---              | ---
|VPC              | The main vpc
|Internet Gateway | The internet gateway attached to vpc
|Subnets          | 2 public and 4 private subnets
|Network ACLs     | 1 public and 1 private NACLs
|Security Groups  | 1 public and 1 private security groups
|NATs             | 2 nats one for each availability zone


## Inputs

| Name                  | Description                         | Type   | Default | Required |
| ------                | -------------                       | :----: | :-----: | :-----:  |
| db_subnet_b_cidr      | The cidr range for db subnet b      | string | -       | yes      |
| db_subnet_c_cidr      | The cidr range for db subnet c      | string | -       | yes      |
| private_subnet_b_cidr | The cidr range for private subnet b | string | -       | yes      |
| private_subnet_c_cidr | The cidr range for private subnet c | string | -       | yes      |
| public_subnet_b_cidr  | The cidr range for public subnet b  | string | -       | yes      |
| public_subnet_c_cidr  | The cidr range for public subnet c  | string | -       | yes      |
| vpc_cidr              | The cidr range for vpc              | string | -       | yes      |

## Outputs

| Name             | Description                   |
| ------           | -------------                 |
| db_subnet_b      | The db subnet b id            |
| db_subnet_c      | The db subnet c id            |
| main_vpc         | The main vpc id               |
| private_sg       | The private security group id |
| private_subnet_b | The private subnet b id       |
| private_subnet_c | The private subnet c id       |
| public_sg        | The public security group id  |
| public_subnet_b  | The public subnet b id        |
| public_subnet_c  | The public subnet c id        |

