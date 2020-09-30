# Load the Rails application.
require "bundler"
require_relative 'application'
require "bundler/setup"
Bundler.require
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
Dotenv.load("./.env")

# Initialize the Rails application.
Rails.application.initialize!
