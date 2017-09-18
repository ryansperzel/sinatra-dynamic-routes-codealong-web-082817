require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get "/goodbye/:name" do
    name = params[:name]
    "Goodbye, #{name}."
  end

  get "/multiply/:num/:other_num" do
    num = params[:num].to_i
    other_num = params[:other_num].to_i
    "#{num * other_num}"
  end

end
