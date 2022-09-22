view: predictions_2022_09_20_t00_56_54_924_z_747 {
  sql_table_name: `cswg_cust_reliability.predictions_2022_09_20T00_56_54_924Z_747`
    ;;

  dimension: abc_indicator {
    type: string
    sql: ${TABLE}.ABC_Indicator ;;
  }

  dimension: commodity_cd {
    type: string
    sql: ${TABLE}.Commodity_cd ;;
  }

  dimension: delivdt_variance {
    type: string
    sql: ${TABLE}.delivdt_variance ;;
  }

  dimension: explanation__attributions {
    hidden: yes
    sql: ${TABLE}.explanation.attributions ;;
    group_label: "Explanation"
    group_item_label: "Attributions"
  }

  dimension: goods_receipt_process_time_days {
    type: string
    sql: ${TABLE}.goods_receipt_process_time_days ;;
  }

  dimension: incoterms_part1 {
    type: string
    sql: ${TABLE}.incoterms_part1 ;;
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

  dimension: net_price_curr {
    type: string
    sql: ${TABLE}.net_price_curr ;;
  }

  dimension: otif {
    type: string
    sql: ${TABLE}.OTIF ;;
  }

  dimension: pdsll_item_delivery_dt {
    type: string
    sql: ${TABLE}.pdsll_item_delivery_dt ;;
  }

  dimension: pdsll_mat_grp_cd {
    type: string
    sql: ${TABLE}.pdsll_mat_grp_cd ;;
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

  dimension: pps {
    type: string
    sql: ${TABLE}.PPS ;;
  }

  dimension: predicted_otif__classes {
    hidden: yes
    sql: ${TABLE}.predicted_OTIF.classes ;;
    group_label: "Predicted Otif"
    group_item_label: "Classes"
  }

  dimension: predicted_otif__scores {
    hidden: yes
    sql: ${TABLE}.predicted_OTIF.scores ;;
    group_label: "Predicted Otif"
    group_item_label: "Scores"
  }

  dimension: product_base_uom_meas {
    type: string
    sql: ${TABLE}.product_base_uom_meas ;;
  }

  dimension: product_grp_cd {
    type: string
    sql: ${TABLE}.product_grp_cd ;;
  }

  dimension: product_num {
    type: string
    sql: ${TABLE}.Product_num ;;
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
    type: string
    sql: ${TABLE}.purch_order_quan ;;
  }

  dimension: vendor_city {
    type: string
    sql: ${TABLE}.Vendor_City ;;
  }

  dimension: vendor_country_cd {
    type: string
    sql: ${TABLE}.Vendor_Country_Cd ;;
  }

  dimension: vendor_num {
    type: string
    sql: ${TABLE}.vendor_num ;;
  }

  measure: count {
    type: count
    drill_fields: [plant_city_name]
  }
}

view: predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__scores {
  dimension: predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__scores {
    type: number
    sql: predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__scores ;;
  }
}

view: predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__classes {
  dimension: predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__classes {
    type: string
    sql: predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__classes ;;
  }
}

view: predictions_2022_09_20_t00_56_54_924_z_747__explanation__attributions {
  dimension: feature_attributions__abc_indicator {
    type: number
    sql: ${TABLE}.featureAttributions.ABC_Indicator ;;
    group_label: "Feature Attributions"
    group_item_label: "Abc Indicator"
  }

  dimension: feature_attributions__commodity_cd {
    type: number
    sql: ${TABLE}.featureAttributions.Commodity_cd ;;
    group_label: "Feature Attributions"
    group_item_label: "Commodity Cd"
  }

  dimension: feature_attributions__delivdt_variance {
    type: number
    sql: ${TABLE}.featureAttributions.delivdt_variance ;;
    group_label: "Feature Attributions"
    group_item_label: "Delivdt Variance"
  }

  dimension: feature_attributions__goods_receipt_process_time_days {
    type: number
    sql: ${TABLE}.featureAttributions.goods_receipt_process_time_days ;;
    group_label: "Feature Attributions"
    group_item_label: "Goods Receipt Process Time Days"
  }

  dimension: feature_attributions__incoterms_part1 {
    type: number
    sql: ${TABLE}.featureAttributions.incoterms_part1 ;;
    group_label: "Feature Attributions"
    group_item_label: "Incoterms Part1"
  }

  dimension: feature_attributions__lead_time_variance {
    type: number
    sql: ${TABLE}.featureAttributions.Lead_Time_Variance ;;
    group_label: "Feature Attributions"
    group_item_label: "Lead Time Variance"
  }

  dimension: feature_attributions__net_price_curr {
    type: number
    sql: ${TABLE}.featureAttributions.net_price_curr ;;
    group_label: "Feature Attributions"
    group_item_label: "Net Price Curr"
  }

  dimension: feature_attributions__pdsll_item_delivery_dt {
    type: number
    sql: ${TABLE}.featureAttributions.pdsll_item_delivery_dt ;;
    group_label: "Feature Attributions"
    group_item_label: "Pdsll Item Delivery Dt"
  }

  dimension: feature_attributions__plant_cd {
    type: number
    sql: ${TABLE}.featureAttributions.Plant_Cd ;;
    group_label: "Feature Attributions"
    group_item_label: "Plant Cd"
  }

  dimension: feature_attributions__plant_city_name {
    type: number
    sql: ${TABLE}.featureAttributions.Plant_City_Name ;;
    group_label: "Feature Attributions"
    group_item_label: "Plant City Name"
  }

  dimension: feature_attributions__plant_country_cd {
    type: number
    sql: ${TABLE}.featureAttributions.Plant_Country_Cd ;;
    group_label: "Feature Attributions"
    group_item_label: "Plant Country Cd"
  }

  dimension: feature_attributions__plant_region_cd {
    type: number
    sql: ${TABLE}.featureAttributions.Plant_Region_Cd ;;
    group_label: "Feature Attributions"
    group_item_label: "Plant Region Cd"
  }

  dimension: feature_attributions__pps {
    type: number
    sql: ${TABLE}.featureAttributions.PPS ;;
    group_label: "Feature Attributions"
    group_item_label: "Pps"
  }

  dimension: feature_attributions__product_base_uom_meas {
    type: number
    sql: ${TABLE}.featureAttributions.product_base_uom_meas ;;
    group_label: "Feature Attributions"
    group_item_label: "Product Base Uom Meas"
  }

  dimension: feature_attributions__product_grp_cd {
    type: number
    sql: ${TABLE}.featureAttributions.product_grp_cd ;;
    group_label: "Feature Attributions"
    group_item_label: "Product Grp Cd"
  }

  dimension: feature_attributions__product_num {
    type: number
    sql: ${TABLE}.featureAttributions.Product_num ;;
    group_label: "Feature Attributions"
    group_item_label: "Product Num"
  }

  dimension: feature_attributions__product_type_cd {
    type: number
    sql: ${TABLE}.featureAttributions.product_type_cd ;;
    group_label: "Feature Attributions"
    group_item_label: "Product Type Cd"
  }

  dimension: feature_attributions__purch_doc_dt {
    type: number
    sql: ${TABLE}.featureAttributions.purch_doc_dt ;;
    group_label: "Feature Attributions"
    group_item_label: "Purch Doc Dt"
  }

  dimension: feature_attributions__purch_doc_item_num {
    type: number
    sql: ${TABLE}.featureAttributions.purch_doc_item_num ;;
    group_label: "Feature Attributions"
    group_item_label: "Purch Doc Item Num"
  }

  dimension: feature_attributions__purch_doc_num {
    type: number
    sql: ${TABLE}.featureAttributions.purch_doc_num ;;
    group_label: "Feature Attributions"
    group_item_label: "Purch Doc Num"
  }

  dimension: feature_attributions__purch_order_quan {
    type: number
    sql: ${TABLE}.featureAttributions.purch_order_quan ;;
    group_label: "Feature Attributions"
    group_item_label: "Purch Order Quan"
  }

  dimension: feature_attributions__vendor_city {
    type: number
    sql: ${TABLE}.featureAttributions.Vendor_City ;;
    group_label: "Feature Attributions"
    group_item_label: "Vendor City"
  }

  dimension: feature_attributions__vendor_country_cd {
    type: number
    sql: ${TABLE}.featureAttributions.Vendor_Country_Cd ;;
    group_label: "Feature Attributions"
    group_item_label: "Vendor Country Cd"
  }

  dimension: feature_attributions__vendor_num {
    type: number
    sql: ${TABLE}.featureAttributions.vendor_num ;;
    group_label: "Feature Attributions"
    group_item_label: "Vendor Num"
  }

  dimension: output_display_name {
    type: string
    sql: ${TABLE}.outputDisplayName ;;
  }
}
