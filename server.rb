require "sinatra"
# require_relative "./lib/"


get "/" do
  erb :home
end

get "/add" do
  erb :add
end

post "/add" do
  @result = params[:number1].to_i + params[:number2].to_i

  erb :result
end
