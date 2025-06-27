resource "aws_s3_bucket" "redshift_logs" {
  bucket = "redshift-logs-${var.redshift_cluster_identifier}"
  force_destroy = true
}
