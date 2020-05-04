FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine

RUN apk add --no-cache tzdata curl procps icu-libs
RUN curl -sSL https://aka.ms/getvsdbgsh | sh /dev/stdin -v latest -l /vsdbg

ENV DOTNET_CLI_TELEMETRY_OPTOUT=1 \
    TZ=Europe/Moscow \
    ASPNETCORE_FORWARDEDHEADERS_ENABLED=true \
    ASPNETCORE_ENVIRONMENT=Development \
    ASPNETCORE_URLS=