data "terraform_remote_state" "network" {
  backend = "remote"

  config = {
    organization = "aws-first-cloud-journey"
    workspaces = {
      name = "dev-network"
    }
  }
}

data "terraform_remote_state" "image_repository" {
  backend = "remote"

  config = {
    organization = "aws-first-cloud-journey"
    workspaces = {
      name = "dev-image-repository"
    }
  }
}

data "terraform_remote_state" "database" {
  backend = "remote"

  config = {
    organization = "aws-first-cloud-journey"
    workspaces = {
      name = "dev-database"
    }
  }
}

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

data "aws_subnets" "public" {
  filter {
    name   = "vpc-id"
    values = [data.terraform_remote_state.network.outputs.vpc_id]
  }

  tags = {
    Tier = "public"
  }
}

data "aws_subnets" "app" {
  filter {
    name   = "vpc-id"
    values = [data.terraform_remote_state.network.outputs.vpc_id]
  }

  tags = {
    Tier = "app"
  }
}

