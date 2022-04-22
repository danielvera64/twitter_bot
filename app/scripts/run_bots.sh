#!/usr/bin/bash

################################################################################
# run_bots.sh
#
# This shell program is for calling the bot every x minutes.
#
################################################################################

# This program should be placed in /usr/local/bin

################################################################################

#min hour day month weekday command
*/5 * * * * python3 ~/twitter_bot/app/useless_facts_bot.py >> /home/pi/temp_log
