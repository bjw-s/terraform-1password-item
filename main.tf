terraform {
  required_providers {
    onepassword = {
      source  = "1Password/onepassword"
      version = "2.0.0"
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

