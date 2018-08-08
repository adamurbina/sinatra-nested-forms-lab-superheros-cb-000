require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        "reached"
        team = Team.new(params[:team])
        params[:team][:members].each do |member_data|
            member = Member.new(member_data)
            team.add_member(member)
        end
        
        erb :team
    end

end
