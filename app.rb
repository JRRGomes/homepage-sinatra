require 'sinatra'
#require "sinatra/reloader" if development?

get '/' do
  erb :index
end

get '/projects.erb' do
  erb :projects
end

get '/education.erb' do
  erb :education
end
