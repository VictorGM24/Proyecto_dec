WITH src_ventasnoviembre AS (
    SELECT * 
    FROM {{ source('google_sheets','ventasnoviembre') }}
    ),

descripcion as (

    select 
        md5(replace (descripcion, ' ', '')) as id_descripcion,
        descripcion

        from src_ventasnoviembre
)

select * from descripcion