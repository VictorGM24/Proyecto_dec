WITH src_ventasnoviembre AS (
    SELECT * 
    FROM {{ source('google_sheets','ventasnoviembre') }}
    ),

ventasnoviembre as (

    select 
        _row,
        articulo,
        fecha,
        marca,
        familia, 
        seccion,
        color,
        cant_,
        venta,
        genero,
        descripcion,
        cliente
        from src_ventasnoviembre
)

select * from ventasnoviembre

