# require 'rubygems'
# require "bundler/setup"
require 'sinatra'
# require 'dberkom-sinatra-prawn'
require 'sinatra/prawn'
require 'erb'
require 'base64'
require 'pry'

# set :prawn, { :page_layout => :landscape }

class DataUrl < Sinatra::Base
  helpers Sinatra::Prawn::Helpers
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

    File.open('canvas_image.png', 'wb+') do |file|
      file.write(Base64.decode64(imgstr))
    end
    # could perhaps return filename here 
    "success"
  end

  get '/prawn' do
    # "Hello World"
    content_type 'application/pdf'
    #puts "Prawn dir = #{Prawn::DATADIR}"
    prawn :pdf
  end

end
