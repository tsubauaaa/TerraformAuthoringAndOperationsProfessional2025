run "demo_test" {
    # command = plan

    # assert {
    #   condition = length(var.s3_bucket_name) > 3
    #   error_message = "S3 bucket name must be longer than 3 characters"
    # }
}

run "test_run2" {
    command = plan
}
