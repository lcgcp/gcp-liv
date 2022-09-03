{{ config(materialized='table') }}

with transform_shopping_centre as (

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
    from my-gcp-learning-2022.batchdata.ShoppingCentres
)

select * from transform_shopping_centre