terraform {
  required_version = ">= 1.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {
  # Par défaut il utilise le socket Docker local sur la VM → rien à changer
}

resource "docker_image" "cv_image" {
  name         = "wajditech/cv-onepage:latest"
  keep_locally = true
}

resource "docker_container" "moncv" {
  name  = "moncv"
  image = docker_image.cv_image.name

  ports {
    internal = 80
    external = 8585
  }

  # Pour être sûr qu’il redémarre toujours
  restart = "unless-stopped"

  # Nettoyage propre si tu refais un apply
  must_run = true
}
