resource "aws_iam_user" "admin-users" {
  name = "admin1"
  tags = {
    Description = "Technical Head"
  }
}


resource "aws_iam_policy" "admin_policy" {
  name = "administrators"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1739935791115",
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF

}


resource "aws_iam_user_policy_attachment" "admin_policy_attach" {
  user       = aws_iam_user.admin-users.name
  policy_arn = aws_iam_policy.admin_policy.arn
}