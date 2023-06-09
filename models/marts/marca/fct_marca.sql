with

    ventasnoviembre as (select * from {{ ref("stg_ventasnoviembre") }}),

    ventas_por_marca as (
        select
            marca,
            cliente,
            count(marca) as cantidad_total_vendida_por_marca,
            sum(venta) as importe_total_marca

        from ventasnoviembre

        group by  marca,cliente
        order by importe_total_marca
    )

select *
from ventas_por_marca
