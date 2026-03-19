#!/bin/sh

echo "Installing ohfetch..."

# Create directories & install files
mkdir -p /etc/ohfetch /usr/bin
cp usr/bin/fetch /usr/bin/fetch
cp etc/ohfetch/logo /etc/ohfetch/logo
chmod +x /usr/bin/fetch

# Verify installation
if [ -f /usr/bin/fetch ] && [ -f /etc/ohfetch/logo ]; then
    echo "ohfetch installed successfully"
else
    echo "Installation failed"
    exit 1
fi
