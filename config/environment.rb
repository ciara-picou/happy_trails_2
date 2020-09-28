# Load the Rails application.
require_relative 'application'
require "bundler/setup"
Bundler.require
Dotenv.load("./.env")

# Initialize the Rails application.
Rails.application.initialize!
