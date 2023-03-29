with
    familia as (select * from {{ ref('base_stg_familia') }}),

        dim_familia as (
        select*

         from familia
    )

    select * from dim_familia
