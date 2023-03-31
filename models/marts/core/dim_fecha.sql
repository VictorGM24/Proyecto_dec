WITH 
src_ventasnoviembre AS (  SELECT * FROM {{ source('google_sheets','ventasnoviembre') }}),

dim_fecha as (

    select 
        md5(replace (fecha, ' ', '')) as id_fecha,
        fecha
        from src_ventasnoviembre
)

select * from dim_fecha
