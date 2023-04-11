output "aws_iam_user" {
    value = aws_iam_user.admin1.name
  
}

output "aws_iam_user-2" {
    value = aws_iam_user.admin2.name
  
}

output "aws_iam_Group" {
    value = aws_iam_group.administrators.name
  
}