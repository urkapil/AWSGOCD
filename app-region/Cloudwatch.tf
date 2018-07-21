resource "aws_cloudwatch_event_rule" "cldwatch" {
  name                = "${var.lambda_function_name}-tagging-lambda"
  description         = "Trigger tagging lambda in periodical intervals"
  schedule_expression = "rate(5 minutes)"
}

resource "aws_lambda_permission" "cldwatch" {
  statement_id  = "${var.lambda_function_name}-AllowCloudWatchTrigger"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.example.arn}"
  principal     = "events.amazonaws.com"
  source_arn    = "${aws_cloudwatch_event_rule.cldwatch.arn}"
}

resource "aws_cloudwatch_event_target" "cldwatch" {
  rule      = "${aws_cloudwatch_event_rule.cldwatch.name}"
  target_id = "${var.lambda_function_name}-TriggerLambda"
  arn       = "${aws_lambda_function.example.arn}"
}
