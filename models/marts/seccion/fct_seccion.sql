with

    ventasnoviembre as (select * from {{ ref("stg_ventasnoviembre") }}),

    ventas_por_seccion as (
        select
            seccion,
            cliente,
            count(seccion) as cantidad_total_vendida_por_seccion,
            sum(venta) as importe_total_seccion

        from ventasnoviembre

        group by  seccion,cliente
        order by importe_total_seccion
    )

select *
from ventas_por_seccion
