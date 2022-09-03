{{ config(materialized='table') }}

with transform_child_care_centre as (

    select 
         Name
        ,Categories
        ,Address
        ,City
        ,State
        ,CAST(Postcode as INT) as Postcode
        ,Phone
        ,Fax
        ,Latitude
        ,Longitude
        ,ST_GeogPoint(Longitude,Latitude) as Location 
    from my-gcp-learning-2022.batchdata.ChildCareCentres
)

select * from transform_child_care_centre