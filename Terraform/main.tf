module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "5.14.0"
  bucket = var.bucket
}

output "s3_bucket_id" {
  description = "The id of the bucket."
  value       = module.s3-bucket.s3_bucket_id
}

module "iam" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-user"
  version = "6.6.1"
  name = "gfg43-newuser"
}

module "iam_policy" {
  source = "terraform-aws-modules/iam/aws//modules/iam-policy"

  name_prefix = "example-gfg43"
  path        = "/"
  description = "My example policy"

  policy = <<-EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Action": [
            "ec2:Describe*"
          ],
          "Effect": "Allow",
          "Resource": "*"
        }
      ]
    }
  EOF

  tags = {
    Example    = "gfg43"
    Environment = "production"
  }
}