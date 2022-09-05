#!/bin/sh
dbt deps --profiles-dir .
dbt debug --target dev --profiles-dir .
dbt run --target dev --profiles-dir .