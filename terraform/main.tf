########################################################
#  Docker Provider - https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs
########################################################
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.0"
    }
  }
}

provider "docker" {}

resource "docker_network" "websandbox_net" {
  name = "websandbox_net"
}

resource "docker_volume" "websandbox_pgdata" {
  name = "websandbox_pgdata"
}
