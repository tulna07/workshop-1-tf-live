data "terraform_remote_state" "security" {
  backend = "remote"

  config = {
    organization = "aws-first-cloud-journey"
    workspaces = {
      name = "dev-security"
    }
  }
}

data "terraform_remote_state" "routing" {
  backend = "remote"

  config = {
    organization = "aws-first-cloud-journey"
    workspaces = {
      name = "dev-routing"
    }
  }
}

