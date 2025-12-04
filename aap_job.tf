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

resource "aap_group" "Slash_group" {
  inventory_id = aap_inventory.Slash_inventory.id
  name         = "tf_group"
  variables = jsonencode(
    {
      "foo" : "bar"
    }
  )
}
