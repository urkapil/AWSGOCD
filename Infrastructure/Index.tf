module "active-env" {
  source                       = "../app-region"
  active_region                = "${var.active_region}"
  active_region-2              = "${var.active_region-2}"
  data_bucket_key              = "${var.data_bucket_key}"
  data_bucket_name             = "${var.data_bucket_name}"
  lambda_handler               = "${var.lambda_handler}"
  lambda_runtime               = "${var.lambda_runtime}"
  lambda_function_name         = "${var.lambda_function_name}"
  env                          = "${var.env}"
  lambda_timeout               = "${var.lambda_timeout}"
  lambda_memory_size           = "${var.lambda_memory_size}"
  cldwatch_schedule_expression = "${var.cldwatch_schedule_expression}"
  project_name                 = "${var.project_name}"

  providers = {
    aws = "aws"
  }
}
