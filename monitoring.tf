resource "aws_cloudwatch_log_group" "redshift" {
  name = "/aws/redshift/${var.redshift_cluster_identifier}"
}

resource "aws_cloudtrail" "redshift_trail" {
  name                          = "redshift-trail"
  s3_bucket_name                = aws_s3_bucket.redshift_logs.bucket
  include_global_service_events = true
  is_multi_region_trail         = true
  enable_log_file_validation    = true
  event_selector {
    read_write_type           = "All"
    include_management_events = true
  }
}
