
  create or replace   view curated.dev.stg_hr_positions
  
   as (
    SELECT 
    *
FROM HR.public.positions
  );

