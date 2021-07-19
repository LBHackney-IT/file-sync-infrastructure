module "file-buffer" {
  source = "../modules/s3-bucket"
  tags = []
  project = ""
  environment = var.environment
  bucket_name = "file-buffers"
  bucket_identifier = "file-sync-infra-"
  role_arns_to_share_access_with = []
}