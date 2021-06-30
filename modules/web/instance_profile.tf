# ---------------------------------------------------------------------------------------------------------------------
# INSTANCE PROFILE
# ---------------------------------------------------------------------------------------------------------------------

resource "aws_iam_instance_profile" "instance_profile" {
  name = "instance_profile"
  role = "${aws_iam_role.instance_role.name}"
}

resource "aws_iam_role" "instance_role" {
  name = "instance_role"
  path = "/"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "attach_ssm" {
  role       = "${aws_iam_role.instance_role.name}"
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
}
