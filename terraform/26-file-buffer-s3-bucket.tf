module "file_buffer" {
  source = "../modules/s3-bucket"
  tags = {}
  project = ""
  environment = var.environment
  bucket_identifier = "file-buffers"
  identifier_prefix = "file-sync-infra"
  role_arns_to_share_access_with = []
}

module "lambda_build_artifacts" {
  source = "../modules/s3-bucket"
  tags = {}
  project = ""
  environment = var.environment
  bucket_identifier = "build-artifacts"
  identifier_prefix = "file-sync-infra"
  role_arns_to_share_access_with = []
}
