SELECT
    L.L_ORDERKEY,
    L.L_PARTKEY,

FROM {{ source('raw','lineitem') }} AS L