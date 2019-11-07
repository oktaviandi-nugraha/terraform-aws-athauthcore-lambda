output "id" {
  value       = "${module.athauth.id}"
  description = "The ID of the REST API"
}

output "root_resource_id" {
  value       = "${module.athauth.root_resource_id}"
  description = "The resource ID of the REST API's root"
}

output "api_arn" {
  value       = "${module.athauth.execution_arn}"
  description = "The execution ARN of the REST API"
}
