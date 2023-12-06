with source_customers as (

    select * from {{ source('dbt_learning', 'customers') }}

),

renamed_customers as (

    select
        id as customer_id,
        first_name,
        last_name

    from source_customers

)

select * from renamed_customers
