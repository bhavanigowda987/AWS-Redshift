output "redshift_endpoint" {
  value = aws_redshift_cluster.this.endpoint
}

output "redshift_sg_id" {
  value = aws_security_group.redshift_sg.id
}
