variable "public_key_path" {
  description = "Path to the public SSH key you want to bake into the instance."
  default     = "~/.ssh/<public key file>.pub"
}

variable "private_key_path" {
  description = "Path to the private SSH key, used to access the instance."
  default     = "~/.ssh/<private key file>.pem"
}

variable "project_name" {
  description = "<your org name> terraform ARMOR aws DEMO"
  default     = "terraformPETSHOPaws"
}

variable "ssh_user" {
  description = "SSH user name to connect to your instance."
  default     = "ubuntu"
}

variable "myname" {
  description = "Default Name tag for AWS Resources"
  default     = "Ubuntu"
}

variable "mydept" {
  description = "Default Deapartment tag for AWS Resources"
  default     = "Solutions Engineering"
}

variable "myorg" {
  description = "Default Organization tag for AWS Resources"
  default     = "PETshop Inc"
}

variable "mystack" {
  description = "Default Stack tag for AWS Resources"
  default     = "SE Demo"
}

variable "myenv" {
  description = "Default Env tag for AWS Resources"
  default     = "customer-pet-labs-1"
}

variable "basedns" {
  description = "Base TLD, ex: kikrr.cloud"
  default = "kikrr.cloud"
}

variable "mydns" {
  description = "Long DNS name for this client, this demo, unique"
  default = "oops"
}

variable "ami_id" {
  description = "Random id generator"
  default     = 1234567890
}

variable "instance_count" {
  description = "Number of instances to launch"
  default = 1
}

variable "custname" {
  description = "The Buyer name, or account id that is demo'ing the vendor software"
  default ="nullCUSTname"
}

variable "vendorname" {
  description = "The Vendor name, of the of the software in this demo environment"
  default = "nullVENDORname"
}

variable "FQDN" {
  description = "The fully qualified domain name for this demo lab"
  default = "FQDN.kikrr.cloud"
}
