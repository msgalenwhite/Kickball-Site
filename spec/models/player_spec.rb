require "spec_helper"

RSpec.describe Player do
  let(:sample_player) { Player.new("Tinkerbell", "mascot", "Disney Fans") }

  describe "#initialize" do
    it "has a name" do
      expect(sample_player.name).to eq("Tinkerbell")
    end
    it "has a position" do
      expect(sample_player.position).to eq("mascot")
    end
    it "has a team_name" do
      expect(sample_player.team_name).to eq("Disney Fans")
    end
  end

  describe ".all" do
    it "is an array" do
      expect(Player.all).to be_a(Array)
    end
    it "contains Player objects"do
      expect(Player.all[0]).to be_a(Player)
    end
  end
end
