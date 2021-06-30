output "elb_dns" {
  description = "Elastic Load Balancer DNS"
  value       = "${module.web.elb_dns}"
}

output "rds_endpoint" {
  description = "RDS endpoint"
  value       = "${module.db.rds_endpoint}"
}
