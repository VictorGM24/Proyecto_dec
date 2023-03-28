WITH src_ventasnoviembre AS (
    SELECT * 
    FROM {{ source('google_sheets','ventasnoviembre') }}
    ),

seccion as (

    select 
        md5(replace (seccion, ' ', '')) as id_seccion,
        seccion

        from src_ventasnoviembre
)

select * from seccion