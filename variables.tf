variable "api_name" {
  type        = "string"
  description = "The name of the API"
  default     = "athauthcoreapi"
}

variable "environment" {
  type        = "string"
  description = "Environment where the resource is running"
}

variable "log_retention_days" {
  type        = "string"
  description = "The no of days the log will be retained"
}

variable "lambda_code_bucket" {
  type        = "string"
  description = "The S3 bucket where the lambda_code_path deployment resides"
}

variable "get_all_group_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "save_group_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "update_group_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "delete_group_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_group_by_id_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_group_members_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "delete_group_members_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "add_group_members_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_group_permissions_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "delete_group_permissions_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "add_group_permissions_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_all_ops_groups_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "update_ops_members_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_all_permissions_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "save_permission_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "delete_permission_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_all_users_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "save_user_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_user_by_email_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "change_user_password_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_refresh_tokens_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "revoke_refresh_tokens_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "unblock_user_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_user_by_username_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "update_username_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_user_by_id_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "delete_user_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "update_user_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "get_user_groups_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "add_user_to_groups_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "delete_user_from_groups_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "authoriser_lambda_code_path" {
  type        = "string"
  description = "Name of the S3 Object that contains the function zip file"
}

variable "auth0_domain" {
  type        = "string"
  description = "Auth0 domain"
}

variable "auth0_client_id" {
  type        = "string"
  description = "auth0 client id that is used to retrieve access token"
}

variable "api_audience" {
  type        = "string"
  description = "Auth0 API Audience that grants access to access Auth0 resources"
  default     = "https://tvlk/auth0wrapper"
}

variable "management_api_scope" {
  type        = "string"
  description = "The JWT Scope needed to access Auth0 Management API"
  default     = "apiv2"
}

variable "ops_scope" {
  type        = "string"
  description = "The JWT Scope needed to access Ops resources"
  default     = "ops"
}

variable "auth0_mgmt_api_url" {
  type        = "string"
  description = "URL of Auth0 management API"
}

variable "extension_api_url" {
  type        = "string"
  description = "URL of Auth0 extension url"
}

variable "lambda_runtime" {
  type        = "string"
  description = "Lambda runtime used"
}

variable "lambda_memory_size" {
  type        = "string"
  description = "The memory size of the lambda"
}

variable "lambda_timeout" {
  type        = "string"
  description = "The timeout of lambda execution"
}

variable "fqdn" {
  type        = "string"
  description = "FQDN of the api gateway"
}

variable "zone_id" {
  type        = "string"
  description = "Route 53 zone id"
}

variable "rate_limit" {
  type = "string"
  description = "API Gateway rate limit" 
}

variable "burst_limit" {
  type = "string"
  description = "API Gateway burst limit" 
}

variable "cache_ttl" {
  type = "string"
  description = "API Gateway cache ttl" 
}
