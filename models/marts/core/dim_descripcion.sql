WITH 
src_ventasnoviembre AS (  SELECT * FROM {{ source('google_sheets','ventasnoviembre') }}),

dim_descripcion as (

    select 
        md5(replace (descripcion, ' ', '')) as id_descripcion,
        descripcion

        from src_ventasnoviembre
)

select * from dim_descripcion