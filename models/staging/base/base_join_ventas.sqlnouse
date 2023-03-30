with
    ventasnoviembre as (select * from {{ ref('stg_ventasnoviembre') }}),

    articulo as (select * from {{ ref('base_stg_articulo') }}),

    cliente as (select * from {{ref('base_stg_cliente')}}),

    color as (select * from {{ref('base_stg_color')}}),

    descripcion as (select * from {{ref('base_stg_descripcion')}}),

    familia as (select * from {{ref('base_stg_familia')}}),

    fecha as (select * from {{ref('base_stg_fecha')}}),

    genero as (select * from {{ref('base_stg_genero')}}),

    marca as (select * from {{ref('base_stg_marca')}}),

    seccion as (select * from {{ref('base_stg_seccion')}}),

union_ventas as (

    select distinct        
        id_cliente,
        id_articulo,
        id_color,
        id_marca,
        id_familia, 
        id_seccion,
        id_genero,
        id_descripcion,
        cant_ as cantidad,
        venta,
        id_fecha

        from ventasnoviembre
        join articulo on articulo.articulo = ventasnoviembre.articulo
        join fecha on fecha.fecha = ventasnoviembre.fecha
        join marca on marca.marca = ventasnoviembre.marca
        join familia on familia.familia = ventasnoviembre.familia
        join seccion on seccion.seccion = ventasnoviembre.seccion
        join color on color.color = ventasnoviembre.color
        join genero on genero.genero = ventasnoviembre.genero
        join descripcion on descripcion.descripcion = ventasnoviembre.descripcion
        join cliente on cliente.cliente = ventasnoviembre.cliente

)

select * from union_ventas
