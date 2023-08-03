select 
    *
from {{ source('Instacart', 'department') }}