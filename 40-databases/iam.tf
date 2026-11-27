resource "aws_iam_role" "mysql" {
  name = "${var.project}-${var.environment}-mysql"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

  tags = merge(
    local.common_tags,
    {
      Name = "${var.project}-${var.environment}-mysql"
    }
  )
}