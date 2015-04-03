require 'sinatra'
require 'json'

get '/' do 
	"Hello World!"
end

get '/feeds' do
	content_type :json
	{:key1 => 'value1', :key2 => 'value2'}.to_json
end

