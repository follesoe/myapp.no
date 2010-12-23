require "rubygems"
require "sinatra"

helpers do
  include Rack::Utils
  
  def h(source)
    escape_html(source)
  end
end

get "/:name?" do
  erb :index
end