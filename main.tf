
module "alertPolicy" {
  source = "./alertPolicy"
  incident_preference = "PER_POLICY"
  newrelic_api_key = var.newrelic_api_key
}


module "newrelic_nrql_alert_condition" {
  source = "./newRelicAlertCondition"
  policy_id  = module.alertPolicy.policy
   newrelic_api_key = var.newrelic_api_key
}
