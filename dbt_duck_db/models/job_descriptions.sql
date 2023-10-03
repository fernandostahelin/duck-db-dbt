
{{ config(materialized='external', location = 'D:\pastas_usuario\Documents\Estudos\2023_09_27_testing_dbt_duck_db\final.csv', format = 'csv') }}

SELECT
    Experience,
    Qualifications,
    Country,
    COUNT(*)

FROM {{ source('external_csv', 'job_02') }}

GROUP BY
    Experience,
    Qualifications,
    Country

ORDER BY
    Experience ASC,
    Qualifications ASC,
    Country DESC
