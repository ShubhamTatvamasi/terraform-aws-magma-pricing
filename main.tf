provider "aws" {
  region = "us-east-1"
}

data "local_file" "magma_plan" {
  filename = "./magma-aws/magma-aws-plan.json"
}

module "pricing" {
  source  = "terraform-aws-modules/pricing/aws//modules/pricing"
  version = "1.3.0"
  content = jsondecode(data.local_file.magma_plan.content)
}
