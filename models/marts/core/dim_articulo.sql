WITH 
src_ventasnoviembre AS (  SELECT * FROM {{ source('google_sheets','ventasnoviembre') }}),

dim_articulo as (

    select 
        md5(replace (articulo, ' ', '')) as id_articulo,
        articulo

        from src_ventasnoviembre
)

select * from dim_articulo