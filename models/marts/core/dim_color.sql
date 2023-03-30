WITH 
src_ventasnoviembre AS (  SELECT * FROM {{ source('google_sheets','ventasnoviembre') }}),

dim_color as (

    select 
        md5(replace (color, ' ', '')) as id_color,
        color

        from src_ventasnoviembre
)

select * from dim_color