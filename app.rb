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
  @title = "Applications written by Jonas Follesø"
  erb :index
end

get %r{^/tileflood/?$}i do
  @title = "Tile Flood"
  erb :tileflood
end