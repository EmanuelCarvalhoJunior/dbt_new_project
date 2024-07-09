SELECT
    C.C_CUSTKEY     AS BNKEY,
    C.C_NATIONKEY   AS NATIONKEY,
    C.C_NAME        AS NAME,
    

FROM {{ source('raw','customer') }} AS C
