SELECT
L.L_ORDERKEY,
L.L_PARTKEY,

from {{ source('raw','lineitem')}} AS L