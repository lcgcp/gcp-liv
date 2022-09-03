{{ config(materialized='table') }}

with transform_sportingclubs as (

    select 
         Categories
        ,Name
        ,Address
        ,City
        ,State
        ,CAST(Postcode as INT) as Postcode
        ,Phone
        ,Website
        ,Email
        ,Latitude
        ,Longitude
        ,ST_GeogPoint(Longitude,Latitude) as Location 
    from my-gcp-learning-2022.batchdata.SportingClubs
    WHERE STATE != '6000'
)

select * from transform_sportingclubs