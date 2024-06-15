resource "aws_iam_user" "gha-user" {
  name = "gha-user"
}
resource "aws_iam_group" "gha-group" {
    name = "gha-group"
}
resource "aws_iam_user_group_membership" "gha-membership" {
   groups = [ aws_iam_group.gha-group.name ] #group is a set of string
   user = aws_iam_user.gha-user.name #user is not a set of string
}