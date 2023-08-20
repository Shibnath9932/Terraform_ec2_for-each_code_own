variable "ami" {
  type    = string
  default = "ami-053b0d53c279acc90" #copied ami id from os Immage from US East (N. Virginia)
}
variable "instance_type" {
  type    = string
  default = "t2.micro" #collect from console
}