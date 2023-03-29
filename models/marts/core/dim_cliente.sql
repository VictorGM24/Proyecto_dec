with
    cliente as (select * from {{ ref('base_stg_cliente') }}),

        dim_cliente as (
        select*

         from cliente
    )

    select * from dim_cliente
