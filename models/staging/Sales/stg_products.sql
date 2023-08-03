select 
    *
from {{ source('Instacart', 'products') }}