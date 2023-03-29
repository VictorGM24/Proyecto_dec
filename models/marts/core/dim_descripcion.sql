with
    descripcion as (select * from {{ ref('base_stg_descripcion') }}),

        dim_descripcion as (
        select*

         from descripcion
    )

    select * from dim_descripcion
