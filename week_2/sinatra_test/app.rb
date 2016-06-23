require 'sinatra'

get '/'  do
	'Hellow, World'
end

get '/real_page'  do
	'The other other other page'
end

get '/hi'  do
	redirect to('/real_page')
end