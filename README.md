# AWS IAM Group

Creates one AWS IAM group for Port vending workflows. The group's AWS-visible
name is supplied through `execution_name`; `env`, `project`, and `name` provide
standard module metadata.

This is a reusable child module. It intentionally has no provider or backend
configuration; configure the AWS provider in the calling root module.

AWS IAM groups do not support resource tags. The module still merges the
standard tag set with `extra_tags` and exposes it as metadata through the
`tags` output, so callers can retain vending context alongside the group.
