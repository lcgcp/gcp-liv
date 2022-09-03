{{ config(materialized='table') }}

with transform_restaurants as (

    select 
         Name
        ,Categories
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
    from my-gcp-learning-2022.batchdata.Restaurants
)

select * from transform_restaurants