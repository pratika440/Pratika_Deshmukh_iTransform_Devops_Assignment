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

module "ghost" {
    source = "./ghost"
    image_name = "${var.image_name}"
    container_name = "${var.container_name}"
    ext_port = "${var.ext_port}"
    
}