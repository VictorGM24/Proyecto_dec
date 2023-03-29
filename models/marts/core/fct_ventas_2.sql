with
    ventasnoviembre as (select * from {{ ref('stg_ventasnoviembre') }}),

    dimension_articulo as (select * from {{ ref('dim_articulo') }}),

    dimension_cliente as (select * from {{ref('dim_cliente')}}),

    dimension_color as (select * from {{ref('dim_color')}}),

    dimension_descripcion as (select * from {{ref('dim_descripcion')}}),

    dimension_familia as (select * from {{ref('dim_familia')}}),

    dimension_fecha as (select * from {{ref('dim_fecha')}}),

    dimension_genero as (select * from {{ref('dim_genero')}}),

    dimension_marca as (select * from {{ref('dim_marca')}}),

    dimension_seccion as (select * from {{ref('dim_seccion')}}),

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
        join dimension_articulo on dimension_articulo.articulo = ventasnoviembre.articulo
        join dimension_fecha on dimension_fecha.fecha = ventasnoviembre.fecha
        join dimension_marca on dimension_marca.marca = ventasnoviembre.marca
        join dimension_familia on dimension_familia.familia = ventasnoviembre.familia
        join dimension_seccion on dimension_seccion.seccion = ventasnoviembre.seccion
        join dimension_color on dimension_color.color = ventasnoviembre.color
        join dimension_genero on dimension_genero.genero = ventasnoviembre.genero
        join dimension_descripcion on dimension_descripcion.descripcion = ventasnoviembre.descripcion
        join dimension_cliente on dimension_cliente.cliente = ventasnoviembre.cliente

)

select * from union_ventas