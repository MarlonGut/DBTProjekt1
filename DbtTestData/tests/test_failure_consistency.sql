-- Finde Zeilen wo machine_failure = 1 aber kein Failure-Flag gesetzt ist
SELECT *
FROM {{ ref('stg_sensor_reading') }}
WHERE machine_failure = 1
  AND tool_wear_failure = 0
  AND heat_dissipation_failure = 0
  AND power_failure = 0
  AND overstrain_failure = 0
  AND random_failure = 0