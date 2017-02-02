require "rubygems"
require 'sinatra/base'

require_relative 'helpers'
require_relative 'routes/index'

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)
  enable :sessions

  register Sinatra::App::Routing::Index

  # Uncomment the line below to quickly test locally without needing to create a new docker image
  # run! if app_file == $0

end
