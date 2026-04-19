output "cd_user_access_key_id" {
  description = "AWS key ID for CD user"
  value       = aws_iam_access_key.cd.id
}

output "cd_user_secret_access_key" {
  description = "AWS secret access key for CD user"
  value       = aws_iam_access_key.cd.secret
  sensitive   = true
}
