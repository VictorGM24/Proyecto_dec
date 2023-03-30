WITH src_ventasnoviembre AS (
    SELECT * 
    FROM {{ source('google_sheets','ventasnoviembre') }}
    ),

articulo as (

    select 
        md5(replace (articulo, ' ', '')) as id_articulo,
        articulo

        from src_ventasnoviembre
)

select * from articulo