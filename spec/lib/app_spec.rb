ENV['APP_ENV'] = 'test'

require './app.rb'
require 'rspec'
require 'rack/test'

RSpec.describe 'The HelloWorld App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "test route to index.erb" do
    get '/'
    expect(last_response).to be_ok
  end

  it "test route to projects.erb" do
    get '/projects.erb'
    expect(last_response).to be_ok
  end

  it "test route to education.erb" do
    get '/education.erb'
    expect(last_response).to be_ok
  end
end
