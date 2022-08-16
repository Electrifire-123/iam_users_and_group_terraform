resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"
  users = var.iam_users
  group = aws_iam_group.group.name
  }

resource "aws_iam_group" "group" {
  name = "rahul-iam-group-b4"

}



resource "aws_iam_user" "iam_user" {
  count = length(var.iam_users)
  name = var.iam_users[count.index]
}

resource "aws_instance" "aws_1" {
  ami = "ami-0ea11756f8d855b6f"
  instance_type = "t2.micro"
  count = "${var.instance_bool ? 0 : 1}"
  tags = {
    "Name" = "HelloDuniya_1234"
    "Owner" = "Rahul Yadav"
  }
}