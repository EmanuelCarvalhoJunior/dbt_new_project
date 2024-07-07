select
*
from 

{{ ref('ingestion1') }}
where sexo = 'f'