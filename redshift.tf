resource "aws_redshift_cluster" "this" {
  cluster_identifier          = var.redshift_cluster_identifier
  node_type                   = var.node_type
  number_of_nodes             = var.number_of_nodes
  database_name               = var.database_name
  master_username             = var.master_username
  master_password             = var.master_password
  iam_roles                   = [aws_iam_role.redshift_role.arn]
  cluster_subnet_group_name   = aws_redshift_subnet_group.this.name
  vpc_security_group_ids      = [aws_security_group.redshift_sg.id]
  encrypted                   = true
  publicly_accessible         = false
  skip_final_snapshot         = true
  availability_zone_relocation_enabled = true
}
