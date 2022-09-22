connection: "customer_analytics_looker-mi4"

# include all the views
include: "/views/**/*.view"

datagroup: cswg_cust_reliability_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cswg_cust_reliability_default_datagroup

explore: store {}

explore: supplier {}
explore: transaction {}
