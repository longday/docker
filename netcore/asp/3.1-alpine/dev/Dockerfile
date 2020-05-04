#https://hub.docker.com/_/microsoft-dotnet-core-sdk/
FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine

# Add dependencies for Timezone support; debug support
RUN apk add --no-cache tzdata curl procps

# Install debug
RUN curl -sSL https://aka.ms/getvsdbgsh | sh /dev/stdin -v latest -l /vsdbg

ENV \ 
    # Disable telemety
    DOTNET_CLI_TELEMETRY_OPTOUT=1 \
    # Set TZ
    TZ=Europe/Moscow \
    # Enable X-Forwarded 
    ASPNETCORE_FORWARDEDHEADERS_ENABLED=true \
    # Set Env
    ASPNETCORE_ENVIRONMENT=Development 