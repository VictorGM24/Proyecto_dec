with
    genero as (select * from {{ ref('base_stg_genero') }}),

        dim_genero as (
        select*

         from genero
    )

    select * from dim_genero
