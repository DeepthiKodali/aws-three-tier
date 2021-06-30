# db
This module deploys PostgreSQL Database using AWS RDS.

## What gets deployed
| Resource            | Description
| ---                 | ---
| Postgresql instance | The main configuration for Postgresql instance
| DB Subnet Group     | Defines which subnets the Postgresql instance is deployed to


## Inputs

| Name                | Description                                           | Type   | Default | Required |
| ------              | -------------                                         | :----: | :-----: | :-----:  |
| allocated_storage   | The amount of allocated storage                       | string | -       | yes      |
| db_security_group   | db_security_group                                     | string | -       | yes      |
| db_subnet_b         | db_subnet_b                                           | string | -       | yes      |
| db_subnet_c         | db_subnet_c                                           | string | -       | yes      |
| instance_class      | RDS instance class (e.g. db.t2.micro or db.m4.xlarge) | string | -       | yes      |
| multi_az            | Create a replica in different zone if set to true     | string | -       | yes      |
| password            | RDS password                                          | string | -       | yes      |
| skip_final_snapshot | Creates a snapshot when db is deleted if set to true  | string | -       | yes      |
| username            | RDS username                                          | string | -       | yes      |

## Outputs

| Name         | Description   |
| ------       | ------------- |
| rds_endpoint | RDS endpoint  |

--------

### Run Command
After deployment, we can test the db connection using AWS Run Command.
Access the Run Command section in aws ec2 and select an instance to run a command.
Sample DB query as follows:
```
PGPASSWORD=<db_password> psql -h <rds_endpoint> <db name> <username> \
-c "CREATE TABLE link (ID serial PRIMARY KEY, url VARCHAR (255) NOT NULL, name VARCHAR (255) NOT NULL, description VARCHAR (255), rel VARCHAR (50));"

PGPASSWORD=<db_password> psql -h <rds_endpoint> <db name> <username> \
-c "INSERT INTO link (url, name) VALUES (‘http://www.postgresqltutorial.com’,’PostgreSQL Tutorial’);"

PGPASSWORD=<db_password> psql -h <rds_endpoint> <db name> <username> \
-c "SELECT * FROM link;"
```
[For more information on Run Command click here](https://docs.aws.amazon.com/systems-manager/latest/userguide/run-command.html)
