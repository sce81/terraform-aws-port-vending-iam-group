variable "env" {
  description = "Deployment environment used in the module's common tags."
  type        = string

  validation {
    condition     = length(trimspace(var.env)) > 0
    error_message = "env must not be empty."
  }
}

variable "project" {
  description = "Project identifier used in the module's common tags."
  type        = string

  validation {
    condition     = length(trimspace(var.project)) > 0
    error_message = "project must not be empty."
  }
}

variable "name" {
  description = "Logical module name used in the module's common tags."
  type        = string

  validation {
    condition     = length(trimspace(var.name)) > 0
    error_message = "name must not be empty."
  }
}

variable "execution_name" {
  description = "Name assigned to the IAM group. Must comply with AWS IAM group-name constraints."
  type        = string

  validation {
    condition     = can(regex("^[A-Za-z0-9+=,.@_-]{1,128}$", var.execution_name))
    error_message = "execution_name must be 1-128 characters and contain only letters, numbers, and +=,.@_-."
  }
}

variable "extra_tags" {
  description = "Additional tags retained as module metadata for callers. AWS IAM groups do not support tags."
  type        = map(any)
  default     = {}
}
