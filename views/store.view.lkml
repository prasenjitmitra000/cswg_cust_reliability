view: store {
  sql_table_name: `cswg_cust_reliability.store`
    ;;

  dimension: store_cd {
    type: string
    sql: ${TABLE}.store_cd ;;
  }

  dimension: store_country_cd {
    type: string
    sql: ${TABLE}.store_country_cd ;;
  }

  dimension: store_latitude {
    type: number
    sql: ${TABLE}.store_latitude ;;
  }

  dimension: store_longitude {
    type: number
    sql: ${TABLE}.store_longitude ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }

  dimension: store_regional_cd {
    type: string
    sql: ${TABLE}.store_regional_cd ;;
  }

  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
