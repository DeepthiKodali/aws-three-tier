# web

This module deploys the application, the application is running in an auto scaling group.
The auto scaling group will guarantee at least one instance is running per availability zone.
We run an example application on httpd behind an Elastic Load Balancer.
We use spot instance to keep costs low.

## What gets deployed
| Resource              | Description
| ---                   | ---
| Autoscaling Group     | Defines what scale we want our instances to be at
| Launch Configuration  | Defines how to deploy each instance, instances are deployed in private subnets
| Elastic Load Balancer | The elb that is public facing and connected to the instances via security groups
| Instance Profile      | IAM Instance Profile that is attached to instances
| IAM Role              | The instance role that is attached to Instance Profile, it defines permission to interact with AWS System Manager (run command)

## Inputs

| Name             | Description                   | Type   | Default | Required |
| ------           | -------------                 | :----: | :-----: | :-----:  |
| private_sg       | The private security group id | string | -       | yes      |
| private_subnet_b | The private subnet b id       | string | -       | yes      |
| private_subnet_c | The private subnet c id       | string | -       | yes      |
| public_sg        | The public security group id  | string | -       | yes      |
| public_subnet_b  | The public subnet b id        | string | -       | yes      |
| public_subnet_c  | The public subnet c id        | string | -       | yes      |

## Outputs

| Name    | Description               |
| ------  | -------------             |
| elb_dns | Elastic Load Balancer DNS |

