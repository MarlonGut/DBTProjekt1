SELECT COUNT(*) as total_Count,
product_quality,
CAST(SUM(machine_failure) AS DOUBLE) / COUNT(*) AS FAILURE_RATE ,
SUM(tool_wear_failure) AS tool_wear_failure_count,
SUM(heat_dissipation_failure) AS heat_dissipation_failure_count,
SUM(power_failure) AS power_failure_count,
SUM(overstrain_failure) AS overstrain_failure_count,
SUM(random_failure) AS random_failure_count,
SUM(machine_failure) AS failure_count
FROM {{ref("stg_sensor_transforming")}}
GROUP BY product_quality



