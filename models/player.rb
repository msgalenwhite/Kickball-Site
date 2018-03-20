require_relative "./team_data"

class Player
  attr_reader :name, :position, :team_name

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    all_players = []
    TeamData::ROLL_CALL.each do |team, value_hash|
      #value_hash is a hash, keys are the positions, values are the players
      value_hash.each do |position, player_name|
        all_players << Player.new(player_name, position, team)
      end
    end
    all_players
  end

  def self.position(position)
    position_list = []
    Player.all.each do |player_object|
      if player_object.position == position.to_sym
        position_list << player_object
      end
    end
    position_list
  end
end
