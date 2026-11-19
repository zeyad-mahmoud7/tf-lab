resource "keycloak_openid_client" "test_app" {
  realm_id              = keycloak_realm.tf_lab.id
  client_id             = "test-app"
  name                  = "Test App"
  enabled               = true
  access_type           = "CONFIDENTIAL"
  standard_flow_enabled = true
  valid_redirect_uris   = ["https://example.com/callback"]
}
