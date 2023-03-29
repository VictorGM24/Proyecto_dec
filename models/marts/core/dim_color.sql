with
    color as (select * from {{ ref('base_stg_color') }}),

        dim_color as (
        select*

         from color
    )

    select * from dim_color
