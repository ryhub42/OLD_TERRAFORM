variable "ami" {}
variable "instance_type" {}
variable   "tags" {
  type = map(string)
}
variable "RDS_DB_SIZE" {}
variable "RDS_INSTANCE_TYPE" {}
variable "RDS_USERNAME" {}
variable "RDS_PASSWORD" {}
variable "RDS_DBNAME" {}