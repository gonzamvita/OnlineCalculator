require "sinatra"
require_relative "./lib/calculator.rb"


get "/" do
  erb :home
end

get "/operations" do
  erb :operations
end

post "/operations" do
	@operation = params[:operation]
	@number1 = params[:number1].to_i
	@number2 = params[:number2].to_i
	@result = Calculator.new(@number1,@number2,@operation).operation
  erb :result
end
