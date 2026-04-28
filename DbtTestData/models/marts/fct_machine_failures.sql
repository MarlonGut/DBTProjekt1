SELECT *
FROM {{ ref("stg_sensor_transforming") }}
WHERE machine_failure = 1