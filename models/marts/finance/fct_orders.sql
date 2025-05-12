with
    payments as (

        select 
        customer_id, 
        order_id,
        amount
        from {{ ref("stg_stripe__payments") }}
        where status != 'fail'

    )

select *
from payments
