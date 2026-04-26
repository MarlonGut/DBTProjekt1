SELECT
    "product id" as product_id,
    "air temperature [k]" as air_temperature_k,
    "process temperature [k]" as process_temperature_k,
    "rotational speed [rpm]" as rotational_speed_rpm,
    "torque [nm]" as torque_nm,
    "tool wear [min]" as tool_wear_min,
    "machine failure" as machine_failure
FROM {{ source("raw_data", "raw_sensor_data") }}
