with src_orders as (
    select * from {{source('postgres','orders')}}
)

,renamed_cast as
(Select
        ADDRESS_ID
        ,ADDRESS
        ,ZIPCODE
        ,STATE
        .COUNTRY
  from src_orders

)