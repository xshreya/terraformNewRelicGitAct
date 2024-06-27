#configure terraform block
terraform{
  required_providers{
    newrelic = {
      source = "newrelic/newrelic"
      version = "3.3.0"
    }
  }
}

#configure new relic provider
provider "newrelic" {
  account_id = 4438275   # Your New Relic account ID
  api_key = var.newrelic_api_key # Your New Relic user key
  region = "US"        # US or EU (defaults to US)
}

#alert policy
resource "newrelic_alert_policy" "policy1" {
    name = "alert-policy01"
    incident_preference = var.incident_preference
  
}
