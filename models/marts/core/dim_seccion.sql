with
    seccion as (select * from {{ ref('base_stg_seccion') }}),

        dim_seccion as (
        select*

         from seccion
    )

    select * from dim_seccion
