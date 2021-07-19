data "aws_iam_policy_document" "hello_world" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      identifiers = [
        "lambda.amazonaws.com"
      ]
      type = "Service"
    }
  }
}

resource "aws_iam_role" "hello_world" {
  name               = "hello_world"
  assume_role_policy = data.aws_iam_policy_document.hello_world.json
}

resource "aws_lambda_function" "hello_world" {
  role             = aws_iam_role.hello_world.arn
  handler          = "hello-world::hello-world.Function::FunctionHandler"
  runtime          = "dotnetcore3.1"
  function_name    = "hello-world"
  s3_bucket        = module.lambda_build_artifacts.bucket_id
  s3_key           = "hello_world.zip"

  environment {
    variables = {
    }
  }
}
