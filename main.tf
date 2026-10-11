resource "google_dataproc_job_iam_policy" "dataproc_job_iam_policies" {
  for_each = var.dataproc_job_iam_policies

  job_id      = each.value.job_id
  policy_data = each.value.policy_data
  project     = each.value.project
  region      = each.value.region
}

