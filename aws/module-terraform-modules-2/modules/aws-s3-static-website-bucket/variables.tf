# Input variables definitions

variable "bucket_name" {
  description = "Name of the S3 bucket. Must be unique."
  type = string
}

variable "tags" {
  description = "Tags for the bucket."
  type = map(string)
  default = {}
}