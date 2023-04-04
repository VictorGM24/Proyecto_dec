WITH 
src_ventasnoviembre AS (  SELECT * FROM {{ source('google_sheets','ventasnoviembre') }}),

dim_cliente as (

    select 
        md5(replace (cliente, ' ', '')) as id_cliente,
        cliente

        from src_ventasnoviembre
)

select * from dim_cliente