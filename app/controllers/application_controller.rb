require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        erb :super_hero
    end 

    post '/team' do 
        @team_name = params[:team][:team_name]
        @team_motto = params[:team][:team_motto]
        members = params[:team][:heroes]
        @heroes = members.collect do |member|
            Hero.new({name: member[:name], power: member[:power], bio: member[:bio]})
        end

        erb :team
    end 


#     {team => {
#     team_name => name,
#     team_motto => motto,
#     heroes [ 
#             {
#             name => name, 
#             power => power, 
#             bio => bio,
#             },
#             {
#             name => name, 
#             power => power, 
#             bio => bio,
#             },
#             {
#             name => name, 
#             power => power, 
#             bio => bio,
#             }
#         ]
#     }
# }


end
