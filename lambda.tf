data "aws_iam_policy_document" "allow-read-parameter-store" {
  statement {
    effect = "Allow"

    actions = [
      "ssm:GetParameters",
    ]

    resources = [
      "arn:aws:ssm:${data.aws_region.current.name}:${data.aws_caller_identity.aws_account.account_id}:parameter/tvlk-secret/athauth/ath/*",
    ]
  }

  statement {
    effect = "Allow"

    actions = [
      "kms:Decrypt",
    ]

    resources = [
      "arn:aws:kms:${data.aws_region.current.name}:${data.aws_caller_identity.aws_account.account_id}:key/${data.aws_kms_alias.tvlk_secret_alias.target_key_id}",
    ]
  }
}

module "get_all_group_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_all_group_lambda_code_path}"

  lambda_name = "${local.get_all_group_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "save_group_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.save_group_lambda_code_path}"

  lambda_name = "${local.save_group_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "update_group_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.update_group_lambda_code_path}"

  lambda_name = "${local.update_group_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "delete_group_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.delete_group_lambda_code_path}"

  lambda_name = "${local.delete_group_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_group_by_id_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_group_by_id_lambda_code_path}"

  lambda_name = "${local.get_group_by_id_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_group_members_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_group_members_lambda_code_path}"

  lambda_name = "${local.get_group_members_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "delete_group_members_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.delete_group_members_lambda_code_path}"

  lambda_name = "${local.delete_group_members_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "add_group_members_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.add_group_members_lambda_code_path}"

  lambda_name = "${local.add_group_members_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_group_permissions_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_group_permissions_lambda_code_path}"

  lambda_name = "${local.get_group_permissions_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "delete_group_permissions_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.delete_group_permissions_lambda_code_path}"

  lambda_name = "${local.delete_group_permissions_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "add_group_permissions_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.add_group_permissions_lambda_code_path}"

  lambda_name = "${local.add_group_permissions_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_all_ops_groups_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_all_ops_groups_lambda_code_path}"

  lambda_name = "${local.get_all_ops_groups_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "update_ops_members_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.update_ops_members_lambda_code_path}"

  lambda_name = "${local.update_ops_members_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_all_permissions_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_all_permissions_lambda_code_path}"

  lambda_name = "${local.get_all_permissions_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "save_permission_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.save_permission_lambda_code_path}"

  lambda_name = "${local.save_permission_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "delete_permission_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.delete_permission_lambda_code_path}"

  lambda_name = "${local.delete_permission_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_all_users_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_all_users_lambda_code_path}"

  lambda_name = "${local.get_all_users_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "save_user_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.save_user_lambda_code_path}"

  lambda_name = "${local.save_user_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_user_by_email_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_user_by_email_lambda_code_path}"

  lambda_name = "${local.get_user_by_email_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "change_user_password_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.change_user_password_lambda_code_path}"

  lambda_name = "${local.change_user_password_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_refresh_tokens_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_refresh_tokens_lambda_code_path}"

  lambda_name = "${local.get_refresh_tokens_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "revoke_refresh_tokens_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.revoke_refresh_tokens_lambda_code_path}"

  lambda_name = "${local.revoke_refresh_tokens_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "unblock_user_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.unblock_user_lambda_code_path}"

  lambda_name = "${local.unblock_user_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_user_by_username_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_user_by_username_lambda_code_path}"

  lambda_name = "${local.get_user_by_username_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "update_username_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.update_username_lambda_code_path}"

  lambda_name = "${local.update_username_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_user_by_id_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_user_by_id_lambda_code_path}"

  lambda_name = "${local.get_user_by_id_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "delete_user_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.delete_user_lambda_code_path}"

  lambda_name = "${local.delete_user_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "update_user_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.update_user_lambda_code_path}"

  lambda_name = "${local.update_user_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "get_user_groups_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.get_user_groups_lambda_code_path}"

  lambda_name = "${local.get_user_groups_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "add_user_to_groups_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.add_user_to_groups_lambda_code_path}"

  lambda_name = "${local.add_user_to_groups_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "delete_user_from_groups_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.delete_user_from_groups_code_path}"

  lambda_name = "${local.delete_user_from_groups_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.default_environment_variables}"

  iam_policy_document = "${data.aws_iam_policy_document.allow-read-parameter-store.json}"
}

module "authoriser_lambda" {
  source = "git@github.com:traveloka/terraform-aws-lambda.git?ref=v0.1.0"

  lambda_code_bucket = "${var.lambda_code_bucket}"

  lambda_code_path = "${var.authoriser_lambda_code_path}"

  lambda_name = "${local.authoriser_lambda_name}"

  lambda_runtime = "${local.lambda_runtime}"

  lambda_handler = "${local.lambda_handler}"

  lambda_memory_size = "${local.lambda_memory_size}"

  lambda_timeout = "${local.lambda_timeout}"

  environment = "${var.environment}"

  product_domain = "${local.product_domain}"

  tags = {
    service = "${local.service_name}"
  }

  log_retention_days = "${var.log_retention_days}"

  environment_variables = "${local.authoriser_environment_variables}"
}
