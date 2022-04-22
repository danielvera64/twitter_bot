#!/bin/bash
systemctl disable run_bots
rm useless_facts_installation.sh
sudo rm -rf ~/twitter_bot
sudo rm /usr/local/run_bots.service
sudo rm /usr/local/bin/run_bots.sh