#!/bin/bash
set -e

# Select a default .NET version if one is not specified
if [ -z "$DOTNET_VERSION" ]; then
  DOTNET_VERSION=3.1.300
fi

# Add the Node.js PPA so that we can install the latest version
curl -sL https://deb.nodesource.com/setup_14.x | bash -

# Install Node.js, npm, and jq
apt-get install -y nodejs npm jq

# Install angular cli
npm install -g @angular/cli

# Install nestjs cli
npm install -g @nestjs/cli

# Change ownership of the .npm directory to the sudo (non-root) user
chown -R $SUDO_USER ~/.npm
