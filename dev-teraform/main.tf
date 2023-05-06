provider "aws" {
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  access_key                  = "mock_access_key"
  secret_key                  = "mock_secret_key"
}

module "base" {
  source                           = "../modules/example"

  instance_type                    = "m5.4xlarge"
  root_block_device_volume_size    = 300
  block_device_volume_size         = 2000
  block_device_iops                = 800

  hello_world_function_memory_size = 2024
}
