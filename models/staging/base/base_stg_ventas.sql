WITH src_ventasnoviembre AS (
    SELECT * 
    FROM {{ source('google_sheets','ventasnoviembre') }}
    ),

ventas as (

    select 
        fecha,
        cant_ as cantidad,
        venta
        
        from src_ventasnoviembre
)

select * from ventas