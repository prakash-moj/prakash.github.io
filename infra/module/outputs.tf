output "db_parameter_group_arn" {
    value = aws_db_parameter_group.default.arn
    description = "RDS parameter group ARN"
}
