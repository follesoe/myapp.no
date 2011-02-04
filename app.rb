# encoding: utf-8
require "rubygems"
require "sinatra"

helpers do
  include Rack::Utils
  
  def h(source)
    escape_html(source)
  end
end

get "/" do
  @title = "Facebook Big Profile"
  erb :bigprofile
end

get %r{^/tileflood/?$}i do
  @title = "Tile Flood: a colorful, fun, simple and addictive puzzle game for Windows Phone 7!"
  erb :tileflood
end

get "/BigProfile" do
  @title = "Facebook Big Profile"
  erb :bigprofile
end