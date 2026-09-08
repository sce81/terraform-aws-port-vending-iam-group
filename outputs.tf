output "group_arn" {
  description = "ARN of the IAM group."
  value       = aws_iam_group.this.arn
}

output "group_id" {
  description = "Stable unique ID of the IAM group."
  value       = aws_iam_group.this.unique_id
}

output "group_name" {
  description = "Name of the IAM group."
  value       = aws_iam_group.this.name
}

output "tags" {
  description = "Common and caller-supplied tags retained as module metadata."
  value       = local.tags
}
