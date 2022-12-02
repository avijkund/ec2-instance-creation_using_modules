provider "vault" {
  address = "http://192.168.28.140:8200"
  skip_tls_verify = true
  client_auth {
  cert_file = "/home/avijit/cert.pem"
  key_file = "/home/avijit/key.pem"
  }
}


output "mypassword" {
 value = "${data.vault_generic_secret.mypass.data["access_key"]}"
 sensitive = true
}



provider "aws" {
  region     = "${data.vault_generic_secret.mypass.data["region"]}"
  access_key = "${data.vault_generic_secret.mypass.data["access_key"]}"
  secret_key = "${data.vault_generic_secret.mypass.data["secret_key"]}"
}
