require "sinatra"
require "erb"

get "/" do
  "OMG, hello Ruby Monstas!"
end

get "/signup" do
  "Here you can sign up for the next beginners course."
end

get "/signin" do

end

get "/monstas/:name" do
#  "Hello #{params[:name]}"
#  params.inspect
#  ERB.new("<h1>Hello <%= params[:name] %></h1>").result(binding)
#  erb "<h1>Hello <%= name %></h1>", { :locals => params }
  template = "<h1>Hello <%= name %></h1>"
  layout = "<html><body><%= yield %></body></html>"

  erb template, { :locals => params, :layout => layout }
end
