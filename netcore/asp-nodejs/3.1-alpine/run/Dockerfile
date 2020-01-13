FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine
RUN apk add --no-cache tzdata nodejs nodejs-npm

ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
ENV TZ=Europe/Moscow
ENV ASPNETCORE_FORWARDEDHEADERS_ENABLED=true