with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price

    from source

)

select products_id, purchse_price AS purchase_price from renamed
