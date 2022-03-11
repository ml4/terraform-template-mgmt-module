## main.tf for use with a passed json config and iteration
#
module "workspace-deploy" {
  for_each = toset(var.envs)
  source  = "app.terraform.io/ml4-hc/workspaces/tfe"
  version = "1.0.27"

  workspace_name    = "${var.stub}-${each.key}"
  org               = var.org
  auto_apply        = true
  terraform_version = var.tf_version
  workspace_tags    = ["${var.stub}", "${each.key}"]
}