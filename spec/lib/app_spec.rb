ENV['APP_ENV'] = 'test'

require './app.rb'
require 'rspec'
require 'rack/test'

describe 'The Homepage App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "should test route to index.erb" do
    get '/'
    expect(last_response).to be_ok
  end

  it "should test route to projects.erb" do
    get '/projects.erb'
    expect(last_response).to be_ok
  end

  it "should test route to education.erb" do
    get '/education.erb'
    expect(last_response).to be_ok
  end

  it "should returns status of index.erb to be 200" do
    get '/'
    expect(last_response.status).to eq 200
  end

  it "should returns status of projects.erb to be 200" do
    get '/projects.erb'
    expect(last_response.status).to eq 200
  end

  it "should returns status of education.erb to be 200" do
    get '/education.erb'
    expect(last_response.status).to eq 200
  end
end
