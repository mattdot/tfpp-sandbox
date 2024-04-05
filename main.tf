terraform {
  required_providers {
    powerplatform = {
      source  = "microsoft/power-platform"
    }
  }
}


resource "powerplatform_environment" "sandbox" {
  location          = "unitedstates"
  language_code     = 1033
  display_name      = "terraformsandbox"
  currency_code     = "USD"
  environment_type  = "Sandbox"
  security_group_id = var.environment_access_group_id
}
