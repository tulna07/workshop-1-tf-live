terraform {
  cloud {
    organization = "aws-first-cloud-journey"

    workspaces {
      project = "workshop-1"
      name    = "dev-app"
    }
  }
}
