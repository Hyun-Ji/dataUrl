require 'rubygems'
require 'sinatra'
require 'erb'
require 'base64'

get '/hello' do
  "Hello"
end

get '/' do
  erb :index
end

post '/ajax' do
  imgstr =  params[:imgstr]
  # imgstr.sub!(/.{22}/, '')
  puts "imgstr = #{imgstr[0..50]}"

  # File.delete('new_icon.png')
  File.open('new_image.png', 'wb+') do |file|
    file.write(Base64.decode64(imgstr))
  end

end
