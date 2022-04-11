output "workspace-name" {
  description = "Workspace Name (ID)"
  values      = tfe_workspace.workspace.id
}
