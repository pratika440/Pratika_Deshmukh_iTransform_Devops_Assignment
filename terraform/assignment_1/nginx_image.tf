terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.12.2"
    }
  }
}
 
provider "docker" {
 host    = "npipe:////.//pipe//docker_engine"
}
 
# Pulls the image
resource "docker_image" "nginx_image" {
  name = "nginx:latest"
}