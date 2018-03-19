require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/teams/:team_name" do
  @team_name = params[:team_name].to_sym
  @team_instance = Team.new(@team_name)
  @players = @team_instance.players
  erb :specific_team
end

get "/teams" do
  @teams = Team.all

  erb :teams
end

get "/" do
  "<a href='/teams'><h1>The LACKP Homepage<h1></a"
end
