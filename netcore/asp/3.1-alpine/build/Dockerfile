FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine
RUN apk add --no-cache tzdata icu-libs
ENV DOTNET_CLI_TELEMETRY_OPTOUT=1 \
    ASPNETCORE_URLS=