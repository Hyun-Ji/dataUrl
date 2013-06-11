require 'rubygems'
require 'sinatra'
require  'sinatra-prawn'
require 'erb'
require 'base64'

set :prawn, { :page_layout => :landscape }

get '/hello' do
  "Hello"
end

get '/' do
  erb :index
end

post '/ajax' do
  imgstr = params[:imgstr]
  puts "imgstr = #{imgstr[0..50]}"

  File.open('new_image.png', 'wb+') do |file|
    file.write(Base64.decode64(imgstr))
  end

end

get '/prawn' do
  content_type 'application/pdf'
  Prawn::Document.generate("hello.pdf") do
    text "Hello World!"
  end
end
