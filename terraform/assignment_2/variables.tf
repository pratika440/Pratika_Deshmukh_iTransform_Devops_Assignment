#Define variables
variable "image_name" {
  description = "Image for container."
  default     = "ghost:latest"
}

variable "container_name" {
  description = "Name of the containers."
  default     = "blooooog"
}

variable "ext_port" {
  description = "External port for container."
  default     = "8081"
}