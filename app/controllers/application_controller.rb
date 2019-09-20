require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get "/" do
      erb :super_hero
    end

    post "/teams" do

      # @team_name = team[name]

      # "Hello"

      erb :team

      # params["team"]["name"]
    end

    # {"name"=>"The Wesley Crushers", "motto"=>"Shut up!", "members"=>[{"name"=>"Blazing Bev", "power"=>"Smoke", "bio"=>"Dr"}, {"name"=>"Riker", "power"=>"Leg lift", "bio"=>"Player"}, {"name"=>"Picard", "power"=>"Scalding Tea", "bio"=>"British"}]}



end
