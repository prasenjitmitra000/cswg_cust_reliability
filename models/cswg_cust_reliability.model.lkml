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

explore: transaction {
  join: supplier {
    view_label: "Supplier"
    type: left_outer
    sql_on: cast( ${transaction.vendor_num} as int)=${supplier.supplier_num}  ;;
    relationship: one_to_many
  }
  join: store {
    view_label: "Store"
    type: left_outer
    sql_on: ${transaction.plant_cd}=${store.store_cd}  ;;
    relationship: one_to_many
  }
}
