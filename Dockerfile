# From: https://stackoverflow.com/a/65485962

# Start with .NET 5.0 runtime.
FROM mcr.microsoft.com/dotnet/sdk:5.0

# Add .NET Core 3.1 runtime.
COPY --from=mcr.microsoft.com/dotnet/sdk:3.1 /usr/share/dotnet /usr/share/dotnet
