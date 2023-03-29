with
    fecha as (select * from {{ ref('base_stg_fecha') }}),

        dim_fecha as (
        select*

         from fecha
    )

    select * from dim_fecha
