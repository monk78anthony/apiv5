# ------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------------------------------------------

variable "table_name" {
  description = "The name to use for all the cluster resources"
  type        = string
  default = null
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket used for the database's remote state storage"
  type        = string
  default = null
}

variable "db_remote_state_key" {
  description = "The name of the key in the S3 bucket used for the database's remote state storage"
  type        = string
  default = null
}

variable "read_capacity" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
  default = null
}

variable "write_capacity" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
  default = null
}
