#!/bin/bash
# ENV variables
{
  echo 'TWITTER_BOT_CONSUMER_KEY=VALUE';
  echo 'TWITTER_BOT_CONSUMER_SECRET=VALUE';
  echo 'TWITTER_BOT_ACCESS_TOKEN=VALUE';
  echo 'TWITTER_BOT_ACCESS_SECRET=VALUE';
  echo 'USELESS_FACTS_URL=VALUE';
} >> ~/.bashrc
# Create folder
mkdir ~/twitter_bot
# Download code
git clone https://github.com/danielvera64/twitter_bot.git ~/twitter_bot
# Copy Startup scripts
cp ~/twitter_bot/app/scripts/run_bots.service /usr/local/bin/run_bots.service
cp ~/twitter_bot/app/scripts/run_bots.sh /usr/local/run_bots.sh
# Add symbolic link
ln -s /usr/local/bin/run_bots.service /usr/local/lib/systemd/system/run_bots.service
# Make script executable
chmod +x /usr/local/run_bots.sh
# Enable service
echo "Enabling run_bots service:"
systemctl enable run_bots
# Check service
journalctl -u run_bots