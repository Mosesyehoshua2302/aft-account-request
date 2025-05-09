module "sme-network-hub" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "mosesye+smenetworkhub@amazon.com"
    AccountName               = "sme-network-hub-aft"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "mosesye@amazon.com"
    SSOUserFirstName          = "sme-network-hub"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sme-network-hub"
}