//--------------------------------------------------------------------
// Variables
variable "s3_bucket_acceleration_status" {}
variable "s3_bucket_acl" {}
variable "s3_bucket_attach_deny_insecure_transport_policy" {}
variable "s3_bucket_attach_elb_log_delivery_policy" {}
variable "s3_bucket_attach_policy" {}
variable "s3_bucket_attach_public_policy" {}
variable "s3_bucket_block_public_acls" {}
variable "s3_bucket_block_public_policy" {}
variable "s3_bucket_cors_rule" {}
variable "s3_bucket_create_bucket" {}
variable "s3_bucket_force_destroy" {}
variable "s3_bucket_grant" {}
variable "s3_bucket_ignore_public_acls" {}
variable "s3_bucket_lifecycle_rule" {}
variable "s3_bucket_logging" {}
variable "s3_bucket_object_lock_configuration" {}
variable "s3_bucket_policy" {}
variable "s3_bucket_replication_configuration" {}
variable "s3_bucket_request_payer" {}
variable "s3_bucket_restrict_public_buckets" {}
variable "s3_bucket_server_side_encryption_configuration" {}
variable "s3_bucket_tags" {}
variable "s3_bucket_versioning" {}
variable "s3_bucket_website" {}

//--------------------------------------------------------------------
// Modules
module "s3_bucket" {
  source  = "app.terraform.io/Thiyagu_Jayaraju-training/s3-bucket/aws"
  version = "2.2.0"

  acceleration_status = "${var.s3_bucket_acceleration_status}"
  acl = "${var.s3_bucket_acl}"
  attach_deny_insecure_transport_policy = "${var.s3_bucket_attach_deny_insecure_transport_policy}"
  attach_elb_log_delivery_policy = "${var.s3_bucket_attach_elb_log_delivery_policy}"
  attach_policy = "${var.s3_bucket_attach_policy}"
  attach_public_policy = "${var.s3_bucket_attach_public_policy}"
  block_public_acls = "${var.s3_bucket_block_public_acls}"
  block_public_policy = "${var.s3_bucket_block_public_policy}"
  bucket = "Gaurav"
  bucket_prefix = "thiyagu-jayaraju"
  cors_rule = "${var.s3_bucket_cors_rule}"
  create_bucket = "${var.s3_bucket_create_bucket}"
  force_destroy = "${var.s3_bucket_force_destroy}"
  grant = "${var.s3_bucket_grant}"
  ignore_public_acls = "${var.s3_bucket_ignore_public_acls}"
  lifecycle_rule = "${var.s3_bucket_lifecycle_rule}"
  logging = "${var.s3_bucket_logging}"
  object_lock_configuration = "${var.s3_bucket_object_lock_configuration}"
  policy = "${var.s3_bucket_policy}"
  replication_configuration = "${var.s3_bucket_replication_configuration}"
  request_payer = "${var.s3_bucket_request_payer}"
  restrict_public_buckets = "${var.s3_bucket_restrict_public_buckets}"
  server_side_encryption_configuration = "${var.s3_bucket_server_side_encryption_configuration}"
  tags = "${var.s3_bucket_tags}"
  versioning = "${var.s3_bucket_versioning}"
  website = "${var.s3_bucket_website}"
}