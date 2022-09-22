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

explore: predictions_2022_09_20_t00_56_54_924_z_747 {
  join: predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__scores {
    view_label: "Predictions 2022 09 20 T00 56 54 924 Z 747: Predicted Otif Scores"
    sql: LEFT JOIN UNNEST(${predictions_2022_09_20_t00_56_54_924_z_747.predicted_otif__scores}) as predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__scores ;;
    relationship: one_to_many
  }

  join: predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__classes {
    view_label: "Predictions 2022 09 20 T00 56 54 924 Z 747: Predicted Otif Classes"
    sql: LEFT JOIN UNNEST(${predictions_2022_09_20_t00_56_54_924_z_747.predicted_otif__classes}) as predictions_2022_09_20_t00_56_54_924_z_747__predicted_otif__classes ;;
    relationship: one_to_many
  }

  join: predictions_2022_09_20_t00_56_54_924_z_747__explanation__attributions {
    view_label: "Predictions 2022 09 20 T00 56 54 924 Z 747: Explanation Attributions"
    sql: LEFT JOIN UNNEST(${predictions_2022_09_20_t00_56_54_924_z_747.explanation__attributions}) as predictions_2022_09_20_t00_56_54_924_z_747__explanation__attributions ;;
    relationship: one_to_many
  }
}

explore: predictions_2022_09_21_t01_12_44_960_z_685 {
  join: predictions_2022_09_21_t01_12_44_960_z_685__predicted_otif__scores {
    view_label: "Predictions 2022 09 21 T01 12 44 960 Z 685: Predicted Otif Scores"
    sql: LEFT JOIN UNNEST(${predictions_2022_09_21_t01_12_44_960_z_685.predicted_otif__scores}) as predictions_2022_09_21_t01_12_44_960_z_685__predicted_otif__scores ;;
    relationship: one_to_many
  }

  join: predictions_2022_09_21_t01_12_44_960_z_685__predicted_otif__classes {
    view_label: "Predictions 2022 09 21 T01 12 44 960 Z 685: Predicted Otif Classes"
    sql: LEFT JOIN UNNEST(${predictions_2022_09_21_t01_12_44_960_z_685.predicted_otif__classes}) as predictions_2022_09_21_t01_12_44_960_z_685__predicted_otif__classes ;;
    relationship: one_to_many
  }

  join: predictions_2022_09_21_t01_12_44_960_z_685__explanation__attributions {
    view_label: "Predictions 2022 09 21 T01 12 44 960 Z 685: Explanation Attributions"
    sql: LEFT JOIN UNNEST(${predictions_2022_09_21_t01_12_44_960_z_685.explanation__attributions}) as predictions_2022_09_21_t01_12_44_960_z_685__explanation__attributions ;;
    relationship: one_to_many
  }
}
