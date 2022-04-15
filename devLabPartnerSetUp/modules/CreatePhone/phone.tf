resource "genesyscloud_telephony_providers_edges_phone" "test_phone" {
  name                   = "Terraform Phone"
  state                  = "active"
  site_id                = genesyscloud_telephony_providers_edges_site.Primary_Site.id
  phone_base_settings_id = genesyscloud_telephony_providers_edges_phonebasesettings.PhoneBaseSetting.id
  line_base_settings_id  = genesyscloud_telephony_providers_edges_phonebasesettings.PhoneBaseSetting.id
  //line_addresses         = ["+13175550000"]
  web_rtc_user_id        = module.CreateUsersAndQueues.User.id

  /*capabilities {
    provisions            = false
    registers             = false
    dual_registers        = false
    allow_reboot          = false
    no_rebalance          = false
    no_cloud_provisioning = false
    cdm                   = true
    hardware_id_type      = "mac"
    media_codecs          = ["audio/opus"]
  }*/
}