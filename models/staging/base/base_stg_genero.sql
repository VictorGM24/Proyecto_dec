WITH src_ventasnoviembre AS (
    SELECT * 
    FROM {{ source('google_sheets','ventasnoviembre') }}
    ),

genero as (

    select 
        md5(replace (genero, ' ', '')) as id_genero,
        genero

        from src_ventasnoviembre
)

select * from genero