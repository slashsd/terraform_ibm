resource "aap_inventory" "Slash_inventory" {
  name         = "My new inventory"
  description  = "A new inventory for testing"
  organization = 1
  variables = jsonencode(
    {
      "foo" : "bar"
    }
  )
}
