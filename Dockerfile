FROM microsoft/dotnet:1.0.0-preview2-sdk
WORKDIR /app
COPY . ./
WORKDIR src/ConcourseTest
RUN export NUGET_PACKAGES=../../packages && \
    dotnet restore && \
    dotnet build
