require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    @team = Team.new(params[:team])
    params[:team][:members].each do |hero|
      Hero.new(hero)
    end
    @heroes = Hero.all
    erb :team
  end
end
