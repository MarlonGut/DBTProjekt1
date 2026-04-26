{{config(materialized='table')}}

SELECT
rotational_speed_rpm* torque_nm * (2* 3.14159265 / 60) as power_watt,
process_temperature_k - air_temperature_k as temp_diff_k,
rotational_speed_rpm* torque_nm as overstrain_score
FROM {{ ref("stg_sensor_reading") }}