data "tfe_outputs" "tfc-configs" {
  organization = var.tf_org
  workspace    = "terraform-dev-demo-configs"
}

resource "tfe_workspace" "workspace" {
  name           = var.workspace_name
  organization   = var.tf_org
  tag_names      = var.tags
  queue_all_runs = false
  auto_apply     = true
  speculative_enabled = true

  vcs_repo {
    identifier     = var.repo
    branch         = var.branch
    oauth_token_id = data.tfe_outputs.tfc-configs.values.github_token_id
  }
}