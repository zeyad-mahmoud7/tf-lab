provider "keycloak" {
  client_id     = "terraform"
  client_secret = var.keycloak_client_secret
  url           = var.keycloak_url
  realm         = "tf-lab"
}

variable "keycloak_url" {
  type = string
}

variable "keycloak_client_secret" {
  type      = string
  sensitive = true
}
