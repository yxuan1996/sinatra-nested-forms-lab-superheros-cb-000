require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]
      @superheroes = members.collect do |member_details|
        SuperHero.new(name: member_details[:name], power: member_details[:power], bio: member_details[:bio])
      end
      erb :team
    end


end
