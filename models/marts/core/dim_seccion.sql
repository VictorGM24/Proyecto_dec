WITH 
src_ventasnoviembre AS (  SELECT * FROM {{ source('google_sheets','ventasnoviembre') }}),

dim_seccion as (

    select 
        md5(replace (seccion, ' ', '')) as id_seccion,
        seccion

        from src_ventasnoviembre
)

select * from dim_seccion