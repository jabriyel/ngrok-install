#!/bin/bash

# Download ngrok.asc and add it to trusted keys
curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null

# Add ngrok repository to sources list
echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | sudo tee /etc/apt/sources.list.d/ngrok.list

# Update package index
sudo apt update

# Install ngrok
sudo apt install ngrok

# Add API
ngrok config add-authtoken 5ZuwS4w8ncF7cBYmzp72e_4XCiUVri9P3U8PEEQ2CYE

sleep 1

wget https://github.com/jabriyel/ngrok/blob/main/ngrok1.py

sleep 3

wget https://github.com/jabriyel/ngrok/blob/main/ngrok2.py

# Run the first Python file
python3 ngrok1.py &

# Wait for 7 seconds
sleep 7

# Run the second Python file
python3 ngrok2.py
