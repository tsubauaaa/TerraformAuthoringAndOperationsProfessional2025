resource "aws_s3_bucket" "example" {
  bucket = "kplabs-bucket-0121123"
}

resource "aws_s3_bucket_policy" "allow_access_from_another_account" {
  bucket = aws_s3_bucket.example.id
  policy = data.aws_iam_policy_document.allow_access_from_another_account.json
}

data "aws_iam_policy_document" "allow_access_from_another_account" {
  statement {
    effect = "Allow"

    principals {
      type        = "AWS"
      identifiers = ["arn:aws:iam::123456789012:root"]
    }

    actions = ["s3:GetObject", "s3:PutObject"]

    resources = [
      "${aws_s3_bucket.example.arn}/*",
      aws_s3_bucket.example.arn
    ]
  }
}
