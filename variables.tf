variable "index_doc" {
  type        = string
  default     = "index.html"
  description = "The index document of the site."
}

variable "error_doc" {
  type        = string
  default     = "index.html"
  description = "The error document (e.g. 404 page) of the site."
}

variable "origin_path" {
  type        = string
  default     = ""
  description = "The path to the file in the S3 bucket (no trailing slash)."
}

variable "site_url" {
  type        = string
  description = "The URL for the site."
}

variable "wait_for_deployment" {
  type        = string
  description = "Define if Terraform should wait for the distribution to deploy before completing."
  default     = true
}

variable "s3_bucket_name" {
  type        = string
  description = "Name of S3 bucket for website"
}

variable "tags" {
  type        = map(string)
  description = "A map of AWS Tags to attach to each resource created"
  default     = {}
}

variable "cloudfront_price_class" {
  type        = string
  description = "The price class for the cloudfront distribution"
  default     = "PriceClass_100"
}

variable "hosted_zone_id" {
  type        = string
  description = "hosted zone id"
}