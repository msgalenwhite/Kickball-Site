require_relative "./team_data"

class Team
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    team_array = []
    TeamData::ROLL_CALL.each do |team, positions|
      team_array << Team.new(team)
    end
    team_array
  end

  def self.list_positions
    list = []
    TeamData::ROLL_CALL.values[0].each do |position, player|
      list << position.to_s
    end
    list
  end

  def players
    team_players = []
    TeamData::ROLL_CALL[@name].each do |position, player|
      team_players << Player.new(player, position, @name)
    end
    team_players
  end
end
