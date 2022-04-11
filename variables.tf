variable "tf_org" {
  default = "my-demo-account"
  type    = string
}
variable "workspace_name" {
  description = "Workspace's Name"
  type        = string
}
variable "tags" {
  description = "Workspace's Tags. Required Tags: [\"AppName\", \"SquadName\"]"
  type        = list(any)
  default     = []
}
variable "repo" {
  description = "Repository Path"
  type        = string
}
variable "branch" {
  description = "Branch Name"
  type        = string
}