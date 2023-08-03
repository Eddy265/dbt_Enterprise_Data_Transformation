select 
    *
from {{ source('Instacart', 'orders') }}