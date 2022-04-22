#!/bin/bash
# ENV variables
{
  echo 'export TWITTER_BOT_CONSUMER_KEY=VALUE';
  echo 'export TWITTER_BOT_CONSUMER_SECRET=VALUE';
  echo 'export TWITTER_BOT_ACCESS_TOKEN=VALUE';
  echo 'export TWITTER_BOT_ACCESS_SECRET=VALUE';
  echo 'export USELESS_FACTS_URL=VALUE';
} >> ~/.bashrc
source ~/.bashrc
# Create folder
mkdir ~/twitter_bot
# Download code
git clone https://github.com/danielvera64/twitter_bot.git ~/twitter_bot
# Install libraries
pip3 install -r ~/twitter_bot/requirements.txt
# Copy Startup scripts
sudo cp ~/twitter_bot/app/scripts/run_bots.service /usr/local/bin/run_bots.service
sudo cp ~/twitter_bot/app/scripts/run_bots.sh /usr/local/run_bots.sh
# Add symbolic link
sudo ln -s /usr/local/bin/run_bots.service /etc/systemd/system
# Make script executable
sudo chmod +x /usr/local/run_bots.sh
# Enable service
echo "Enabling run_bots service:"
systemctl enable run_bots
# Check service
journalctl -u run_bots