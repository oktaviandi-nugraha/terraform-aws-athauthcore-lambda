resource "aws_api_gateway_rest_api" "athauthapi" {
  name        = "${var.api_name}"
  description = "API Gateway to manage authorisation"
  body        = "${data.template_file.apigw.rendered}"
}

resource "aws_lambda_permission" "get_all_group" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_all_group_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "save_group" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.save_group_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "update_group" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.update_group_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "delete_group" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.delete_group_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_group_by_id" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_group_by_id_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_group_members" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_group_members_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "delete_user_from_groups_lambda" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.delete_user_from_groups_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "add_group_members" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.add_group_members_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_group_permissions" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_group_permissions_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "delete_group_permissions" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.delete_group_permissions_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "add_group_permissions" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.add_group_permissions_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_all_ops_groups" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_all_ops_groups_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "update_ops_members" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.update_ops_members_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_all_permissions" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_all_permissions_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "save_permission" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.save_permission_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "delete_permission" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.delete_permission_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_all_users" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_all_users_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "save_user" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.save_user_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_user_by_email" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_user_by_email_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "change_user_password" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.change_user_password_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_refresh_tokens" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_refresh_tokens_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "revoke_refresh_tokens" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.revoke_refresh_tokens_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "unblock_user" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.unblock_user_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_user_by_username" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_user_by_username_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "update_username" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.update_username_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_user_by_id" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_user_by_id_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "update_user" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.update_user_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "delete_user" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.delete_user_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "get_user_groups" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.get_user_groups_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "add_user_to_groups" {
  action        = "lambda:InvokeFunction"
  statement_id  = "lambda_invoke_permission"
  function_name = "${module.add_user_to_groups_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*/*/*"
}

resource "aws_lambda_permission" "authoriser" {
  action        = "lambda:InvokeFunction"
  statement_id  = "allowAuthoriserInvocation"
  function_name = "${module.authoriser_lambda.lambda_name}"
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.athauthapi.execution_arn}/*"
}

resource "aws_api_gateway_method_settings" "v1" {
  rest_api_id = "${aws_api_gateway_rest_api.athauthapi.id}"
  stage_name  = "${aws_api_gateway_deployment.RestApiDeploymentv1.stage_name}"
  method_path = "*/*"

  settings {
    metrics_enabled        = false
    logging_level          = "INFO"
    cache_ttl_in_seconds   = 300
    throttling_burst_limit = 5000
    throttling_rate_limit  = 10000
  }
}

resource "aws_api_gateway_deployment" "RestApiDeploymentv1" {
  rest_api_id = "${aws_api_gateway_rest_api.athauthapi.id}"
  stage_name  = "v1"
}

resource "aws_acm_certificate" "cert" {
  domain_name       = "${var.fqdn}"
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name          = "${var.fqdn}"
    ProductDomain = "${local.product_domain}"
    Environment   = "${var.environment}"
    Description   = "Certificate for ${var.fqdn}"
    ManagedBy     = "terraform"
  }
}

resource "aws_route53_record" "cert_validation" {
  name    = "${aws_acm_certificate.cert.domain_validation_options.0.resource_record_name}"
  type    = "${aws_acm_certificate.cert.domain_validation_options.0.resource_record_type}"
  zone_id = "${var.zone_id}"
  records = ["${aws_acm_certificate.cert.domain_validation_options.0.resource_record_value}"]
  ttl     = 60
}

resource "aws_acm_certificate_validation" "athmgmt_domain" {
  certificate_arn         = "${aws_acm_certificate.cert.arn}"
  validation_record_fqdns = ["${aws_route53_record.cert_validation.fqdn}"]
}

resource "aws_api_gateway_domain_name" "athmgmt_domain" {
  domain_name              = "${var.fqdn}"
  regional_certificate_arn = "${aws_acm_certificate_validation.athmgmt_domain.certificate_arn}"
  security_policy          = "TLS_1_2"

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_route53_record" "athmgmt_domain" {
  name    = "${aws_api_gateway_domain_name.athmgmt_domain.domain_name}"
  type    = "A"
  zone_id = "${var.zone_id}"

  alias {
    evaluate_target_health = true
    name                   = "${aws_api_gateway_domain_name.athmgmt_domain.regional_domain_name}"
    zone_id                = "${aws_api_gateway_domain_name.athmgmt_domain.regional_zone_id}"
  }
}

resource "aws_api_gateway_base_path_mapping" "athmgmt_domain" {
  api_id      = "${aws_api_gateway_rest_api.athauthapi.id}"
  stage_name  = "${aws_api_gateway_deployment.RestApiDeploymentv1.stage_name}"
  domain_name = "${aws_api_gateway_domain_name.athmgmt_domain.domain_name}"
}
