
WITH 
src_ventasnoviembre AS (  SELECT * FROM {{ source('google_sheets','ventasnoviembre') }}),

dim_marca as (

    select 
        md5(replace (marca, ' ', '')) as id_marca,
        marca

        from src_ventasnoviembre
)

select * from dim_marca