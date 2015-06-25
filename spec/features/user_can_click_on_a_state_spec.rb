require 'rails_helper'

RSpec.describe "user" do
  context 'with an account' do
    let(:user){
      User.create(id: 1)
    }
    xit 'can click on a state and see states representatives' do
      visit "/users/1"
      states = page.all("path")
      byebug
      click_link_or_button states.first
      expect(page).to have_content("Representative")
    end
  end
end
