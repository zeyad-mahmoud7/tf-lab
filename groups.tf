resource "keycloak_group" "dammam" {
  realm_id = keycloak_realm.tf_lab.id
  name     = "dammam-branch"
}
