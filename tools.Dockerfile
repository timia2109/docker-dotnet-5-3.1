# From: https://stackoverflow.com/a/65485962

# Start with .NET 5.0 runtime.
FROM mcr.microsoft.com/dotnet/sdk:5.0

# Add .NET Core 3.1 runtime.
COPY --from=mcr.microsoft.com/dotnet/sdk:3.1 /usr/share/dotnet /usr/share/dotnet

# Install az tool
RUN curl -sL https://aka.ms/InstallAzureCLIDeb | bash

# Install Node 14
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

# Install node.js
RUN apt-get install nodejs -y

# Install func tool 
RUN npm install -g azure-functions-core-tools@3 --unsafe-perm true