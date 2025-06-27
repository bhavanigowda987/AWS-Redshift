resource "aws_redshift_subnet_group" "this" {
  name       = "redshift-subnet-group"
  subnet_ids = var.subnet_ids
}

resource "aws_security_group" "redshift_sg" {
  name        = "redshift-sg"
  description = "Security group for Redshift"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 5439
    to_port     = 5439
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
