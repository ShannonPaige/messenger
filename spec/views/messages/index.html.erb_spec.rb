require 'rails_helper'

RSpec.describe "messages/index.html.erb", type: :view do
  before(:all) do
    @aliceID = User.find_by_name("Alice").id
    @bobID = User.find_by_name("Bob").id

    visit '/'
    fill_in "Name", with: "Alice"
    fill_in "Password", with: "password"
    click_button "Login"

    visit "/users/#{@aliceID}"
    click_link "Bob"
  end

  it "shows the messages between Alice and Bob" do
    expect(page).to have_content 'Hi Alice'
    expect(page).to have_content 'Hi Bob'
  end
end
