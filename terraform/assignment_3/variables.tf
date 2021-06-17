# Define variables 
variable "env" { 
     description = "env : prod or dev" 
    }

 variable "image_name" {  
     type = map 
     description = "Image name for container"  
     default = {   
         prod = "ghost:alpine"    
         dev = "ghost:latest"  
    } 
}

 variable "container_name" { 
      type = map  
      description = "Name of the container" 
      default = {   
         prod = "blog_prod" 
         dev = "blog_dev"  
    } 
}

 variable "internal_port" {
       description = "Internal port for container" 
       default = "2368" 
    }

 variable "external_port" { 
       type = map 
       description = "External port for container" 
       default = {    
           prod = "8081"  
           dev = "9090" 
    } 
}