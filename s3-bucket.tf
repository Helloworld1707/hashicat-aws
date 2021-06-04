//--------------------------------------------------------------------
// Variables


//--------------------------------------------------------------------
// Modules
module "s3_bucket" {
  source  = "app.terraform.io/Thiyagu_Jayaraju-training/s3-bucket/aws"
  version = "2.2.0"

  bucket_prefix = "thiyagu-jayaraju"
  
}