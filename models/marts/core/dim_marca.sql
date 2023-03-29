with
    marca as (select * from {{ ref('base_stg_marca') }}),

        dim_marca as (
        select*

         from marca
    )

    select * from dim_marca
