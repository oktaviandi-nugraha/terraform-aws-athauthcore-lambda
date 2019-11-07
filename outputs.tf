output "id" {
  value       = "${aws_api_gateway_rest_api.athauthapi.id}"
  description = "The ID of the REST API"
}

output "root_resource_id" {
  value       = "${aws_api_gateway_rest_api.athauthapi.root_resource_id}"
  description = "The resource ID of the REST API's root"
}

output "api_arn" {
  value       = "${aws_api_gateway_rest_api.athauthapi.execution_arn}"
  description = "The execution ARN of the REST API"
}
