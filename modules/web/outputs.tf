output "elb_dns" {
  description = "Elastic Load Balancer DNS"
  value       = "${aws_elb.elb.dns_name}"
}
