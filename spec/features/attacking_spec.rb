feature "attacking" do
  context "once" do

    before do
      sign_in_and_play
      click_button 'Attack!'
    end

    scenario "visit play page and click attack button" do
      expect(page).to have_content("Successful attack!")
    end

    scenario "player 1 attacks player 2" do
      expect(page).to have_content("Harrison's HP: 90/#{Player::DEFAULT_HP}")
    end

  context "twice" do
    before do
      click_button 'Attack!'
    end

    scenario "player 1 attacks then player 2 attacks" do
      expect(page).to have_content("Harrison's HP: 90/#{Player::DEFAULT_HP}")
      expect(page).to have_content("Raluca's HP: 90/#{Player::DEFAULT_HP}")
    end
  end
end

end