require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do

    erb :super_hero
  end

  post '/teams' do
# binding.pry
    # @team = params[:team]
    # @members = params[:team][:members]
    #
    @team = Team.new(params[:team])
    members = params[:team][:members]
    # params[:team][:members].each do |info|
    members.each do |info|
      Hero.new(info)
    end

    @heroes = Hero.all

    erb :team
  end
end
