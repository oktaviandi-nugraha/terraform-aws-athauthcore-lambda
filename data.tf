data "aws_caller_identity" "aws_account" {}

data "aws_region" "current" {}

data "aws_kms_alias" "tvlk_secret_alias" {
  name = "alias/tvlk/ssm/tvlk-secret"
}


data "template_file" "apigw" {
  template = "${file("${path.module}/templates/apigw.yaml")}"

  vars = {
    api_name = "${var.api_name}"
    get_all_group_lambda = "${module.get_all_group_lambda.lambda_arn}"
    save_group_lambda = "${module.save_group_lambda.lambda_arn}"
    update_group_lambda = "${module.update_group_lambda.lambda_arn}"
    delete_group_lambda = "${module.delete_group_lambda.lambda_arn}"
    get_group_by_id_lambda = "${module.get_group_by_id_lambda.lambda_arn}"
    get_group_members_lambda = "${module.get_group_members_lambda.lambda_arn}"
    delete_group_members_lambda = "${module.delete_group_members_lambda.lambda_arn}"
    add_group_members_lambda = "${module.add_group_members_lambda.lambda_arn}"
    get_group_permissions_lambda = "${module.get_group_permissions_lambda.lambda_arn}"
    delete_group_permissions_lambda = "${module.delete_group_permissions_lambda.lambda_arn}"
    add_group_permissions_lambda = "${module.add_group_permissions_lambda.lambda_arn}"
    get_all_ops_groups_lambda = "${module.get_all_ops_groups_lambda.lambda_arn}"
    update_ops_members_lambda = "${module.update_ops_members_lambda.lambda_arn}"
    get_all_permissions_lambda = "${module.get_all_permissions_lambda.lambda_arn}"
    save_permission_lambda = "${module.save_permission_lambda.lambda_arn}"
    delete_permission_lambda = "${module.delete_permission_lambda.lambda_arn}"
    get_all_users_lambda = "${module.get_all_users_lambda.lambda_arn}"
    save_user_lambda = "${module.save_user_lambda.lambda_arn}"
    get_user_by_email_lambda = "${module.get_user_by_email_lambda.lambda_arn}"
    change_user_password_lambda = "${module.change_user_password_lambda.lambda_arn}"
    get_refresh_tokens_lambda = "${module.get_refresh_tokens_lambda.lambda_arn}"
    revoke_refresh_tokens_lambda = "${module.revoke_refresh_tokens_lambda.lambda_arn}"
    unblock_user_lambda = "${module.unblock_user_lambda.lambda_arn}"
    get_user_by_username_lambda = "${module.get_user_by_username_lambda.lambda_arn}"
    update_username_lambda = "${module.update_username_lambda.lambda_arn}"
    get_user_by_id_lambda = "${module.get_user_by_id_lambda.lambda_arn}"
    delete_user_lambda = "${module.delete_user_lambda.lambda_arn}"
    update_user_lambda = "${module.update_user_lambda.lambda_arn}"
    get_user_groups_lambda = "${module.get_user_groups_lambda.lambda_arn}"
    add_user_to_groups_lambda = "${module.add_user_to_groups_lambda.lambda_arn}"
    delete_user_from_groups_lambda = "${module.delete_user_from_groups_lambda.lambda_arn}"
    authoriser_lambda = "${module.authoriser_lambda.lambda_arn}"
  }
}
