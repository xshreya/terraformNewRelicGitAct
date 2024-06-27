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

module "alert_policy" {
  source = "./alert_policy"
  incident_preference = "PER_POLICY"
}


module "newrelic_nrql_alert_condition" {
  source = "./newrelic_nrql_alert_condition"
  policy_id  = module.alert_policy.policy
}