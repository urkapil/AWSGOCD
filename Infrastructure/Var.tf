variable "active_region" {
  default = "us-west-2"
}

variable "active_region-2" {
  default = "us-west-1"
}

variable "project_name" {
  default = "Example.zip"
}

variable "data_bucket_key" {
  default = "Example.zip"
}

variable "data_bucket_name" {
  default = "terraform-lambda-code-main"
}

variable "lambda_handler" {
  default = "main.handler"
}

variable "lambda_runtime" {
  default = "nodejs6.10"
}

variable "lambda_function_name" {
  default = "serverless_example_lambda"
}

variable "lambda_timeout" {
  default = "300"
}

variable "lambda_memory_size" {
  default = "512"
}

variable "env" {
  default = "test"
}

variable "cldwatch_schedule_expression" {
  default = "test"
}
