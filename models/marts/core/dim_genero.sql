WITH 
src_ventasnoviembre AS (  SELECT * FROM {{ source('google_sheets','ventasnoviembre') }}),

dim_genero as (

    select 
        md5(replace (genero, ' ', '')) as id_genero,
        genero

        from src_ventasnoviembre
)

select * from dim_genero