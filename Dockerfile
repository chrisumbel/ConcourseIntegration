FROM microsoft/dotnet:1.0.0-preview2-sdk
WORKDIR /app
COPY . ./
WORKDIR src/ConcourseTest
RUN dotnet restore
RUN dotnet build
