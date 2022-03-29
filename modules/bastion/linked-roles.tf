# autoscaling and bucket roles
data "aws_iam_policy_document" "assume-policy-document" {
  statement {
    actions = [
      "sts:AssumeRole"
    ]
    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "bastion-host-role" {
  name                 = var.bastion_iam_role_name
  path                 = "/"
  assume_role_policy   = data.aws_iam_policy_document.assume-policy-document.json
  permissions_boundary = var.bastion_iam_permissions_boundary
}

data "aws_iam_policy_document" "bastion-host-policy-document" {

  statement {
    actions = [
      "s3:PutObject",
      "s3:PutObjectAcl"
    ]
    resources = ["${aws_s3_bucket.bucket.arn}/logs/*"]
  }

  statement {
    actions = [
      "s3:GetObject"
    ]
    resources = ["${aws_s3_bucket.bucket.arn}/public-keys/*"]
  }

  statement {
    actions = [
      "s3:ListBucket"
    ]
    resources = [
    aws_s3_bucket.bucket.arn]

    condition {
      test     = "ForAnyValue:StringEquals"
      values   = ["public-keys/"]
      variable = "s3:prefix"
    }
  }

  statement {
    actions = [

      "kms:Encrypt",
      "kms:Decrypt"
    ]
    resources = [aws_kms_key.key.arn]
  }

}

resource "aws_iam_policy" "bastion-host-policy" {
  name   = var.bastion_iam_role_policy
  policy = data.aws_iam_policy_document.bastion-host-policy-document.json
}

resource "aws_iam_role_policy_attachment" "bastion-host-policy-attachement" {
  policy_arn = aws_iam_policy.bastion-host-policy.arn
  role       = aws_iam_role.bastion-host-role.name
}
