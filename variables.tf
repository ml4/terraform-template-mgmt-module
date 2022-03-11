variable "stub" {
  description = "Stub for team name"
}

variable "org" {
  description = "Organization name"
}

variable "tf_version" {
  description = "Version of TF to put in the workspaces"
}

variable "envs" {
  type = list(string)
  description = "comma-separated list of environments e.g. dev,sit,prd"
  default = ["dev","sit","prd"]
}
