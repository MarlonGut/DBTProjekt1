SELECT

    "product id" as product_id,
    "air temperature [k]" as air_temperature_k,
    "process temperature [k]" as process_temperature_k,
    "rotational speed [rpm]" as rotational_speed_rpm,
    "torque [nm]" as torque_nm,
    "tool wear [min]" as tool_wear_min,
    "machine failure" as machine_failure,
    "twf" as tool_wear_failure,
    "hdf" as heat_dissipation_failure,
    "pwf" as power_failure,
    "osf" as overstrain_failure,
    "rnf" as random_failure,
    substr("product id",1,1) as product_quality,
    substr("product id",2) as serial_number
FROM {{ source("raw_data", "raw_sensor_data") }}
