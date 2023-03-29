with
    articulo as (select * from {{ ref('base_stg_articulo') }}),

        dim_articulo as (
        select*

         from articulo
    )

    select * from dim_articulo
