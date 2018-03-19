require "spec_helper"

RSpec.describe Team do
  let(:sample_team) { Team.new("Disney Fans")}
  let(:team_with_players) { Team.new(TeamData::ROLL_CALL.keys[0]) }

  describe "#initialize" do
    it "has a name" do
      expect(sample_team.name).to eq("Disney Fans")
    end
  end

  describe ".all" do
    it "returns an array" do
      expect(Team.all).to be_a(Array)
    end
    it "contains Team objects" do
      expect(Team.all[0]).to be_a(Team)
    end
  end

  describe "#players" do
    it "returns an array" do
      expect(team_with_players.players).to be_a(Array)
    end
    it "contains player objects" do
      expect(team_with_players.players[0]).to be_a(Player)
    end
  end
end
