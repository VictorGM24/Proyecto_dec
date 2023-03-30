WITH 
src_ventasnoviembre AS (  SELECT * FROM {{ source('google_sheets','ventasnoviembre') }}),

dim_familia as (

    select 
        md5(replace (familia, ' ', '')) as id_familia,
        familia

        from src_ventasnoviembre
)

select * from dim_familia