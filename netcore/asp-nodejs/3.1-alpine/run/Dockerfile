FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine
RUN apk add --no-cache tzdata nodejs nodejs-npm

ENV DOTNET_CLI_TELEMETRY_OPTOUT=1 \
    TZ=Europe/Moscow \
    ASPNETCORE_FORWARDEDHEADERS_ENABLED=true \
    ASPNETCORE_URLS=