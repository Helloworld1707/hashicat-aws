//--------------------------------------------------------------------
// Variables
variable "s3_bucket_acceleration_status" {}
variable "s3_bucket_policy" {}
variable "s3_bucket_request_payer" {}

//--------------------------------------------------------------------
// Modules
module "s3_bucket" {
  source  = "app.terraform.io/Thiyagu_Jayaraju-training/s3-bucket/aws"
  version = "2.2.0"

  acceleration_status = "${var.s3_bucket_acceleration_status}"
  bucket = "Gaurav"
  bucket_prefix = "thiyagu-jayaraju"
  policy = "${var.s3_bucket_policy}"
  request_payer = "${var.s3_bucket_request_payer}"
}