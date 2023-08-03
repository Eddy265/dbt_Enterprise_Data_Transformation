-- back compat for old kwarg name
  
  begin;
    
        
            
            
        
    

    

    merge into curated.dev.fct_orders as DBT_INTERNAL_DEST
        using curated.dev.fct_orders__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                DBT_INTERNAL_SOURCE.order_id = DBT_INTERNAL_DEST.order_id
            )

    
    when matched then update set
        "ORDER_ID" = DBT_INTERNAL_SOURCE."ORDER_ID","CUSTOMER_ID" = DBT_INTERNAL_SOURCE."CUSTOMER_ID","PRODUCT_ID" = DBT_INTERNAL_SOURCE."PRODUCT_ID","ORDER_DATE" = DBT_INTERNAL_SOURCE."ORDER_DATE","QUANTITY" = DBT_INTERNAL_SOURCE."QUANTITY","UNIT_PRICE" = DBT_INTERNAL_SOURCE."UNIT_PRICE","UNIT_COST" = DBT_INTERNAL_SOURCE."UNIT_COST","ORDER_TOTAL_AMOUNT" = DBT_INTERNAL_SOURCE."ORDER_TOTAL_AMOUNT","PROFIT" = DBT_INTERNAL_SOURCE."PROFIT"
    

    when not matched then insert
        ("ORDER_ID", "CUSTOMER_ID", "PRODUCT_ID", "ORDER_DATE", "QUANTITY", "UNIT_PRICE", "UNIT_COST", "ORDER_TOTAL_AMOUNT", "PROFIT")
    values
        ("ORDER_ID", "CUSTOMER_ID", "PRODUCT_ID", "ORDER_DATE", "QUANTITY", "UNIT_PRICE", "UNIT_COST", "ORDER_TOTAL_AMOUNT", "PROFIT")

;
    commit;