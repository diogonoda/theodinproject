require "sinatra"
require "erb"

enable :sessions

get "/" do
  "OMG, hello Ruby Monstas!"
end

get "/signup" do
  "Here you can sign up for the next beginners course."
end

get "/signin" do

end

#get "/monstas/:name" do
#  erb template, { :locals => params, :layout => layout }
#end

get "/monstas" do
  @name = params[:name]

  erb :monstas
end

post "/monstas" do
  @name = params[:name]

  session[:message] = "Successfully stored the name #{@name}."
  redirect "/monstas?name=#{@name}"
end
