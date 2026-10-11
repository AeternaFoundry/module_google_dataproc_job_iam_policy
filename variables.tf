variable "dataproc_job_iam_policies" {
  description = <<EOT
Map of dataproc_job_iam_policies, attributes below
Required:
    - job_id
    - policy_data
Optional:
    - project
    - region
EOT

  type = map(object({
    job_id      = string
    policy_data = string
    project     = optional(string)
    region      = optional(string)
  }))
}

