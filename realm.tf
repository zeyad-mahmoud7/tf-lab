resource "keycloak_realm" "tf_lab" {
  realm   = "tf-lab"
  enabled = true
  default_signature_algorithm = "RS256"

 otp_policy {
    type      = "totp"
    algorithm = "HmacSHA1"
    digits    = 6
    period    = 30
  }
}
