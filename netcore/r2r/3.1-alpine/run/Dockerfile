FROM mcr.microsoft.com/dotnet/core/runtime-deps:3.1-alpine
RUN apk add --no-cache tzdata icu-libs

ENV DOTNET_CLI_TELEMETRY_OPTOUT=1 \
    TZ=Europe/Moscow \
    ASPNETCORE_FORWARDEDHEADERS_ENABLED=true \
    ASPNETCORE_URLS=