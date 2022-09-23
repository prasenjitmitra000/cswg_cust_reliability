view: transaction {
  derived_table: {
    sql: select ABC_Indicator,
      Commodity_cd,
      Lead_Time_Variance,
      Mat_Product_Num,
      Movement_Type,
      OTIF,
      PPS,
      Plant_Cd,
      Plant_City_Name,
      Plant_Country_Cd,
      Plant_Region_Cd,
      Product_num,
      Vendor_City,
      Vendor_Country_Cd,
      delivdt_variance,
      explanation.attributions[offset(0)].featureAttributions.purch_doc_item_num ex_purch_doc_item_num,
      explanation.attributions[offset(0)].featureAttributions.purch_doc_num ex_purch_doc_num,
      explanation.attributions[offset(0)].featureAttributions.purch_doc_dt ex_purch_doc_dt,
      explanation.attributions[offset(0)].featureAttributions.purch_order_quan ex_purch_order_quan,
      explanation.attributions[offset(0)].featureAttributions.product_base_uom_meas ex_product_base_uom_meas,
      explanation.attributions[offset(0)].featureAttributions.product_type_cd ex_product_type_cd,
      explanation.attributions[offset(0)].featureAttributions.product_grp_cd ex_product_grp_cd,
      explanation.attributions[offset(0)].featureAttributions.vendor_num ex_vendor_num,
      explanation.attributions[offset(0)].featureAttributions.Vendor_City ex_Vendor_City,
      explanation.attributions[offset(0)].featureAttributions.Vendor_Country_Cd ex_Vendor_Country_Cd,
      explanation.attributions[offset(0)].featureAttributions.Product_num ex_Product_num,
      explanation.attributions[offset(0)].featureAttributions.incoterms_part1 ex_incoterms_part1,
      explanation.attributions[offset(0)].featureAttributions.ABC_Indicator ex_ABC_Indicator,
      explanation.attributions[offset(0)].featureAttributions.Commodity_cd ex_Commodity_cd,
      explanation.attributions[offset(0)].featureAttributions.Plant_Cd ex_Plant_Cd,
      explanation.attributions[offset(0)].featureAttributions.Plant_City_Name ex_Plant_City_Name,
      explanation.attributions[offset(0)].featureAttributions.Plant_Region_Cd ex_Plant_Region_Cd,
      explanation.attributions[offset(0)].featureAttributions.Plant_Country_Cd ex_Plant_Country_Cd,
      explanation.attributions[offset(0)].featureAttributions.net_price_curr ex_net_price_curr,
      explanation.attributions[offset(0)].featureAttributions.goods_receipt_process_time_days ex_goods_receipt_process_time_days,
      explanation.attributions[offset(0)].featureAttributions.pdsll_item_delivery_dt ex_pdsll_item_delivery_dt,
      explanation.attributions[offset(0)].featureAttributions.PPS ex_PPS,
      explanation.attributions[offset(0)].outputDisplayName ex_outputDisplayName,
      goods_receipt_process_time_days,
      incoterms_part1,
      net_price_curr,
      pdsll_item_delivery_dt,
      pdsll_mat_grp_cd,
      predicted_OTIF.scores[offset(0)] o_scores,
      predicted_OTIF.scores[offset(1)] l_scores,
      product_base_uom_meas,
      product_grp_cd,
      product_type_cd,
      purch_doc_dt,
      purch_doc_item_num,
      purch_doc_num,
      purch_order_quan,
      vendor_num,
      row_number() OVER(ORDER BY purch_doc_dt) AS prim_key
      from `mi-4-305707.cswg_cust_reliability.predictions_2022_09_21T01_12_44_960Z_685`
       ;;
  }

  dimension: prim_key {
    type: number
    primary_key: yes
    sql: ${TABLE}.prim_key ;;
  }

  dimension: abc_indicator {
    type: string
    sql: ${TABLE}.ABC_Indicator ;;
  }



  dimension: commodity_cd {
    type: string
    sql: ${TABLE}.Commodity_cd ;;
  }

  dimension: lead_time_variance {
    type: string
    sql: ${TABLE}.Lead_Time_Variance ;;
  }

  dimension: mat_product_num {
    type: string
    sql: ${TABLE}.Mat_Product_Num ;;
  }

  dimension: movement_type {
    type: string
    sql: ${TABLE}.Movement_Type ;;
  }

  dimension: otif {
    type: string
    sql: ${TABLE}.OTIF ;;
  }

  dimension: pps {
    type: string
    primary_key: yes
    sql: ${TABLE}.PPS ;;
  }

  dimension: plant_cd {
    type: string
    sql: ${TABLE}.Plant_Cd ;;
  }

  dimension: plant_city_name {
    type: string
    sql: ${TABLE}.Plant_City_Name ;;
  }

  dimension: plant_country_cd {
    type: string
    sql: ${TABLE}.Plant_Country_Cd ;;
  }

  dimension: plant_region_cd {
    type: string
    sql: ${TABLE}.Plant_Region_Cd ;;
  }

  dimension: product_num {
    type: string
    sql: ${TABLE}.Product_num ;;
    value_format_name: id
  }

  dimension: vendor_city {
    type: string
    sql: ${TABLE}.Vendor_City ;;
  }

  dimension: vendor_country_cd {
    type: string
    sql: ${TABLE}.Vendor_Country_Cd ;;
  }

  dimension: delivdt_variance {
    type: string
    sql: ${TABLE}.delivdt_variance ;;
  }

  dimension: ex_purch_doc_item_num {
    type: number
    sql: ${TABLE}.ex_purch_doc_item_num ;;
  }

  dimension: ex_purch_doc_num {
    type: number
    sql: ${TABLE}.ex_purch_doc_num ;;
  }

  dimension: ex_purch_doc_dt {
    type: number
    sql: ${TABLE}.ex_purch_doc_dt ;;
  }

  dimension: ex_purch_order_quan {
    type: number
    sql: ${TABLE}.ex_purch_order_quan ;;
  }

  dimension: ex_product_base_uom_meas {
    type: number
    sql: ${TABLE}.ex_product_base_uom_meas ;;
  }

  dimension: ex_product_type_cd {
    type: number
    sql: ${TABLE}.ex_product_type_cd ;;
  }

  dimension: ex_product_grp_cd {
    type: number
    sql: ${TABLE}.ex_product_grp_cd ;;
  }

  dimension: ex_vendor_num {
    type: number
    sql: ${TABLE}.ex_vendor_num ;;
  }

  dimension: ex_vendor_city {
    type: number
    sql: ${TABLE}.ex_Vendor_City ;;
  }

  dimension: ex_vendor_country_cd {
    type: number
    sql: ${TABLE}.ex_Vendor_Country_Cd ;;
  }

  dimension: ex_product_num {
    type: number
    sql: ${TABLE}.ex_Product_num ;;
  }

  dimension: ex_incoterms_part1 {
    type: number
    sql: ${TABLE}.ex_incoterms_part1 ;;
  }

  dimension: ex_abc_indicator {
    type: number
    sql: ${TABLE}.ex_ABC_Indicator ;;
  }

  dimension: ex_commodity_cd {
    type: number
    sql: ${TABLE}.ex_Commodity_cd ;;
  }

  dimension: ex_plant_cd {
    type: number
    sql: ${TABLE}.ex_Plant_Cd ;;
  }

  dimension: ex_plant_city_name {
    type: number
    sql: ${TABLE}.ex_Plant_City_Name ;;
  }

  dimension: ex_plant_region_cd {
    type: number
    sql: ${TABLE}.ex_Plant_Region_Cd ;;
  }

  dimension: ex_plant_country_cd {
    type: number
    sql: ${TABLE}.ex_Plant_Country_Cd ;;
  }

  dimension: ex_net_price_curr {
    type: number
    sql: ${TABLE}.ex_net_price_curr ;;
  }

  dimension: ex_goods_receipt_process_time_days {
    type: number
    sql: ${TABLE}.ex_goods_receipt_process_time_days ;;
  }

  dimension: ex_pdsll_item_delivery_dt {
    type: number
    sql: ${TABLE}.ex_pdsll_item_delivery_dt ;;
  }

  dimension: ex_pps {
    type: number
    sql: ${TABLE}.ex_PPS ;;
  }

  dimension: ex_output_display_name {
    type: string
    sql: ${TABLE}.ex_outputDisplayName ;;
  }

  dimension: goods_receipt_process_time_days {
    type: string
    sql: ${TABLE}.goods_receipt_process_time_days ;;
  }

  dimension: incoterms_part1 {
    type: string
    sql: ${TABLE}.incoterms_part1 ;;
  }

  dimension: net_price_curr {
    type: number
    sql: cast(${TABLE}.net_price_curr as FLOAT64) ;;
  }

  dimension: pdsll_item_delivery_dt {
    type: string
    sql: ${TABLE}.pdsll_item_delivery_dt ;;
  }

  dimension: pdsll_mat_grp_cd {
    type: string
    sql: ${TABLE}.pdsll_mat_grp_cd ;;
  }

  dimension: o_scores {
    type: number
    sql: ${TABLE}.o_scores ;;
  }

  dimension: l_scores {
    type: number
    sql: cast(${TABLE}.l_scores as FLOAT64);;
  }

  dimension: product_base_uom_meas {
    type: string
    sql: ${TABLE}.product_base_uom_meas ;;
  }

  dimension: product_grp_cd {
    type: string
    sql: ${TABLE}.product_grp_cd ;;
  }

  dimension: product_type_cd {
    type: string
    sql: ${TABLE}.product_type_cd ;;
  }

  dimension: purch_doc_dt {
    type: string
    sql: ${TABLE}.purch_doc_dt ;;
  }

  dimension: purch_doc_item_num {
    type: string
    sql: ${TABLE}.purch_doc_item_num ;;
  }

  dimension: purch_doc_num {
    type: string
    sql: ${TABLE}.purch_doc_num ;;
  }

  dimension: purch_order_quan {
    type: number
    sql: cast(${TABLE}.purch_order_quan as FLOAT64) ;;
  }

  dimension: vendor_num {
    type: string
    sql: ${TABLE}.vendor_num ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: amount {
    type: sum
    sql:cast( ${purch_order_quan} as int)*cast(${net_price_curr} as int)  ;;
    #sql: ${purch_order_quan} *${net_price_curr};;
  }

  measure: delay_amount {
    type: sum
    sql:case when ${l_scores} >= @{delay_probability_value} then ${purch_order_quan}*${net_price_curr} end ;;
  }

  measure: part_delay_risk {
    type: count_distinct
    label: "# of parts at Delay Risk"
    sql: ${product_num} ;;
    #html: @{big_number_format} ;;
  }

  set: detail {
    fields: [
      abc_indicator,
      commodity_cd,
      lead_time_variance,
      mat_product_num,
      movement_type,
      otif,
      pps,
      plant_cd,
      plant_city_name,
      plant_country_cd,
      plant_region_cd,
      product_num,
      vendor_city,
      vendor_country_cd,
      delivdt_variance,
      ex_purch_doc_item_num,
      ex_purch_doc_num,
      ex_purch_doc_dt,
      ex_purch_order_quan,
      ex_product_base_uom_meas,
      ex_product_type_cd,
      ex_product_grp_cd,
      ex_vendor_num,
      ex_vendor_city,
      ex_vendor_country_cd,
      ex_product_num,
      ex_incoterms_part1,
      ex_abc_indicator,
      ex_commodity_cd,
      ex_plant_cd,
      ex_plant_city_name,
      ex_plant_region_cd,
      ex_plant_country_cd,
      ex_net_price_curr,
      ex_goods_receipt_process_time_days,
      ex_pdsll_item_delivery_dt,
      ex_pps,
      ex_output_display_name,
      goods_receipt_process_time_days,
      incoterms_part1,
      net_price_curr,
      pdsll_item_delivery_dt,
      pdsll_mat_grp_cd,
      o_scores,
      l_scores,
      product_base_uom_meas,
      product_grp_cd,
      product_type_cd,
      purch_doc_dt,
      purch_doc_item_num,
      purch_doc_num,
      purch_order_quan,
      vendor_num
    ]
  }
}
