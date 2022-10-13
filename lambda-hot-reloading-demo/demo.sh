#!/bin/bash
LAMBDA_REMOTE_DOCKER=0 localstack start -d

awslocal lambda create-function --function-name my-cool-local-function \
    --code S3Bucket="__local__",S3Key="/Users/harshcasper/code/localstack/PyCon-ZA-2022/lambda-hot-reloading-demo" \
    --handler lambda_function.lambda_handler \
    --runtime python3.9 \
    --role cool-stacklifter

awslocal lambda invoke --function-name my-cool-local-function \
    --cli-binary-format raw-in-base64-out \
    --payload '{"action": "square", "number": 3}' output.txt
