variable "ami"{
  default = "ami-02383135f96b2293e"
}

variable "instance_type" {
  default = "t2.medium"
}

variable "tags" {
  type = "map"
  default = {
    env ="PROD"
    project_name = "demo"
  }
}