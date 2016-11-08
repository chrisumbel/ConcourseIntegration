#!/bin/sh
cd /app/src/ConcourseTest
sleep 4
Data__DefaultConnection__ConnectionString="Server=db;Port=5432;User Id=postgres;Password=postgres" dotnet ef database update
NUGET_PACKAGES=../../packages dotnet run --server.urls=http://0.0.0.0:5000
