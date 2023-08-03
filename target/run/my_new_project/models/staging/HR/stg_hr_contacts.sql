
  create or replace   view curated.dev.stg_hr_contacts
  
   as (
    SELECT 
    *
FROM HR.public.contacts
  );

