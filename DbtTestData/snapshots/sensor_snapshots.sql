{% snapshot sensor_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key='product_id',
      strategy='check',
      check_cols=['machine_failure']
    )
}}

SELECT * FROM {{ ref('stg_sensor_reading') }}

{% endsnapshot %}