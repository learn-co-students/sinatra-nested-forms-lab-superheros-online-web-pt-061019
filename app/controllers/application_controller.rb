require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end

  post '/teams' do
    # binding.pry
    @team = Team.new(params[:team])
    # binding.pry

    params[:team][:member].each do |details|
      Member.new(details)
    end
    @members = Member.all
    # binding.pry
    erb :team
  end

end
