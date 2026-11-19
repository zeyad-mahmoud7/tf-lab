resource "keycloak_role" "it_support" {
  realm_id    = keycloak_realm.tf_lab.id
  name        = "it-support"
  description = "IT support staff"
}

resource "keycloak_role" "helpdesk" {
  realm_id    = keycloak_realm.tf_lab.id
  name        = "helpdesk"
  description = "Helpdesk agents"
}
