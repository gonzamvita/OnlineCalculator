require "sinatra"


get "/" do
  erb :home
end

get "/add" do
  erb :add
end

post "/add" do
  @result = params[:sum1].to_i + params[:sum2].to_i

  erb :add
end

# get "/author" do
#   @greeting = "Hello World!!"
#   @thetime = Time.now()
#   @ingredients = ["cheese", "pepperoni", "mushrooms"]
#   erb(:author)
# end

# get "/users/:username" do
#   @username = params[:username]

#   erb(:user_profile)
# end

# get "/hours/ago/:shift" do
#   @shift = params[:shift].to_i
#   @adjusted_datetime = (Time.now - @shift*60*60).to_datetime

#   erb(:hours_ago)
# end
