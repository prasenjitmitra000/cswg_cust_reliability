view: supplier {
  sql_table_name: `cswg_cust_reliability.supplier`
    ;;

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.long ;;
  }

  dimension: supplier_cntry_cd {
    type: string
    sql: ${TABLE}.supplier_cntry_cd ;;
  }

  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
  }

  dimension: supplier_num {
    type: number
    primary_key: yes
    sql: ${TABLE}.supplier_num ;;
  }

  dimension: supplier_region_cd {
    type: string
    sql: ${TABLE}.supplier_region_cd ;;
  }

  measure: count {
    type: count
    drill_fields: [supplier_name]
  }
}