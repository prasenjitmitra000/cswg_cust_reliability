project_name: "cswg_cust_reliability"

constant: delay_probability_value {
  value: ".5"
}

constant: big_number_format {
  value: "
  {% if value < 0 %}
  {% assign abs_value = value | times: -1.0 %}
  {% assign pos_neg = '-' %}
  {% else %}
  {% assign abs_value = value | times: 1.0 %}
  {% assign pos_neg = '' %}
  {% endif %}

  {% if abs_value >=1000000000 %}
  {{pos_neg}}{{ abs_value | divided_by: 1000000000.0 | round: 2 }}B
  {% elsif abs_value >=1000000 %}
  {{pos_neg}}{{ abs_value | divided_by: 1000000.0 | round: 2 }}M
  {% elsif abs_value >=1000 %}
  {{pos_neg}}{{ abs_value | divided_by: 1000.0 | round: 2 }}K
  {% else %}
  {{pos_neg}}{{ abs_value }}
  {% endif %}
  "
}
