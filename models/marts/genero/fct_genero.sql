with

    ventasnoviembre as (select * from {{ ref("stg_ventasnoviembre") }}),

    ventas_por_genero as (
        select
            genero,
            cliente,
            count(seccion) as cantidad_total_vendida_por_genero,
            sum(venta) as importe_total_genero

        from ventasnoviembre

        group by  genero,cliente
        order by importe_total_genero
    )

select *
from ventas_por_genero
