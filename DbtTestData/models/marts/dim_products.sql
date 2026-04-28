SELECT
    product_quality,
    COUNT(*) AS product_count,
    AVG(air_temperature_k) AS avg_air_temp_k,
    AVG(process_temperature_k) AS avg_process_temp_k,
    AVG(rotational_speed_rpm) AS avg_rotational_speed_rpm,
    AVG(torque_nm) AS avg_torque_nm,
    AVG(tool_wear_min) AS avg_tool_wear_min,
    AVG(temp_diff_k) AS avg_temp_diff_k,
    AVG(overstrain_score) AS avg_overstrain_score,
    SUM(machine_failure) AS total_machine_failures
FROM {{ ref("stg_sensor_transforming") }}
GROUP BY product_quality