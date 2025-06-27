variable "aws_region" {}
variable "vpc_id" {}
variable "subnet_ids" { type = list(string) }
variable "redshift_cluster_identifier" {}
variable "database_name" {}
variable "master_username" {}
variable "master_password" {}
variable "node_type" {}
variable "number_of_nodes" {}
variable "allowed_cidr_blocks" { type = list(string) }
