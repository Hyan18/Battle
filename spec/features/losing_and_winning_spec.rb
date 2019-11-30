feature "Losing and Winning" do
  scenario "Player 1 wins the game" do
    sign_in_and_play
    19.times { click_button "Attack!" }
    expect(page).to have_content("Winner is Raluca, Loser is Harrison")
  end
end