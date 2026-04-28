{{config(materialized='table')}}
SELECT
    product_id,
    product_quality,
    serial_number,
    air_temperature_k,
    process_temperature_k,
    rotational_speed_rpm,
    torque_nm,
    tool_wear_min,
    machine_failure,
    tool_wear_failure,
    heat_dissipation_failure,
    power_failure,
    overstrain_failure,
    random_failure,
    rotational_speed_rpm * torque_nm * (2 * 3.14159265 / 60) AS power_watt,
    process_temperature_k - air_temperature_k AS temp_diff_k,
    tool_wear_min * torque_nm AS overstrain_score
FROM {{ ref('stg_sensor_reading') }}