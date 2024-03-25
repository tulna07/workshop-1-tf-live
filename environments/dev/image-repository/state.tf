terraform {
  cloud {
    organization = "aws-first-cloud-journey"

    workspaces {
      name    = "dev-image-repository"
      project = "workshop-1"
    }
  }
}
