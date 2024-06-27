
module "alertPolicy" {
  source = "./alertPolicy"
  incident_preference = "PER_POLICY"
}


module "newrelic_nrql_alert_condition" {
  source = "./newRelicAlertCondition"
  policy_id  = module.alertPolicy.policy
}
