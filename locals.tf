locals {
  product_domain = "ath"
  service_name   = "athauth"
  lambda_runtime = "nodejs10.x"

  lambda_handler = "lib.default"

  lambda_memory_size = "256"

  lambda_timeout = "300"

  get_all_group_lambda_name = "get_all_group"

  save_group_lambda_name = "save_group"

  update_group_lambda_name = "update_group"

  delete_group_lambda_name = "delete_group"

  get_group_by_id_lambda_name = "get_group_by_id"

  get_group_members_lambda_name = "get_group_members"

  delete_group_members_lambda_name = "delete_group_members"

  add_group_members_lambda_name = "add_group_members"

  get_group_permissions_lambda_name = "get_group_permissions"

  delete_group_permissions_lambda_name = "delete_group_permissions"

  add_group_permissions_lambda_name = "add_group_permissions"

  get_all_ops_groups_lambda_name = "get_all_ops_groups"

  update_ops_members_lambda_name = "update_ops_members"

  get_all_permissions_lambda_name = "get_all_permissions"

  save_permission_lambda_name = "save_permission"

  delete_permission_lambda_name = "delete_permission"

  get_all_users_lambda_name = "get_all_users"

  save_user_lambda_name = "save_user"

  get_user_by_email_lambda_name = "get_user_by_email"

  change_user_password_lambda_name = "change_user_password"

  get_refresh_tokens_lambda_name = "get_refresh_tokens"

  revoke_refresh_tokens_lambda_name = "revoke_refresh_tokens"

  unblock_user_lambda_name = "unblock_user"

  get_user_by_username_lambda_name = "get_user_by_username"

  update_username_lambda_name = "update_username"

  get_user_by_id_lambda_name = "get_user_by_id"

  delete_user_lambda_name = "delete_user"

  update_user_lambda_name = "update_user"

  get_user_groups_lambda_name = "get_user_groups"

  add_user_to_groups_lambda_name = "add_user_to_groups"
  delete_user_from_groups_lambda_name = "delete_user_from_groups"

  authoriser_lambda_name = "authoriser"

  default_environment_variables = {
    AUTH0_DOMAIN       = "${var.auth0_domain}"
    AUTH0_CLIENT_ID    = "${var.auth0_client_id}"
    AUTH0_MGMT_API_URL = "${var.auth0_mgmt_api_url}"
    EXTENSION_API_URL  = "${var.extension_api_url}"
  }

  authoriser_environment_variables = {
    AUTH0_DOMAIN   = "${var.auth0_domain}"
    API_AUDIENCE   = "${var.api_audience}"
    MGMT_API_SCOPE = "${var.management_api_scope}"
    OPS_SCOPE      = "${var.ops_scope}"
  }
}
