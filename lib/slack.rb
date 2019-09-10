#!/usr/bin/env ruby
require 'httparty'
require 'dotenv'
Dotenv.load('../.env')
require 'awesome_print'
KEY = ENV['KEY']

CHANNELS_URL = "https://slack.com/api/channels.list"
USERS_LIST = "https://slack.com/api/users.list"
#CHAT_URL = "https://slack.com/api/chat.postMessage"

def main
  puts "Welcome to the Ada Slack CLI!"

  response = HTTParty.get("#{CHANNELS_URL}?token=#{KEY}")
  response_data = JSON.parse(response.body)
  ap response_data
   TODO project

  puts "Thank you for using the Ada Slack CLI"
end

main if __FILE__ == $PROGRAM_NAME