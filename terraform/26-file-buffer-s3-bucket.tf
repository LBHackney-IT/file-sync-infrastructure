module "file-buffer" {
  source = "../modules/s3-bucket"
  tags = {}
  project = ""
  environment = var.environment
  bucket_identifier = "file-buffers"
  identifier_prefix = "file-sync-infra"
  role_arns_to_share_access_with = []
}
