variable "ami" {}
variable "instance_type" {}
variable "tags" {
  type = map(string)
}
variable "RDS_USERNAME" {}
variable "RDS_PASSWORD" {}
variable "RDS_DBNAME" {}
variable "RDS_ENDPOINT" {}

