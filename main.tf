terraform {
  required_providers {
    onepassword = {
      source  = "1Password/onepassword"
      version = "1.4.3"
    }
  }
}

data "onepassword_vault" "vault" {
  name = var.vault
}

data "onepassword_item" "item" {
  vault = data.onepassword_vault.vault.uuid
  title = var.item
}

