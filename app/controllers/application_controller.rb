require 'sinatra/base'

class App < Sinatra::Base

set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
# binding.pry
    @team = params[:team]
    @members = params[:team][:members]

    erb :team
  end
end
