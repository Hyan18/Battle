require 'game'

describe Game do
  let(:player_1) { double :player_1, name: "Raluca", hp: 0 }
  let(:player_2) { double :player_2, name: "Harrison" }
  subject(:game) { Game.new(player_1, player_2) }

  it 'should have two players' do
    expect(game).to have_attributes(player_1: player_1, player_2: player_2)
  end

  describe "#attack" do
    it "should reduce hp when attacked" do
      expect( player_2 ).to receive( :reduce_hp ).with 10
      game.attack
    end
  end

  describe "#finish" do
    it "should show a outcome message when a player's hp reaches 0" do
      expect(game.finish).to eq "Winner is Harrison, Loser is Raluca"
    end
  end

end
