require 'rails_helper'

RSpec.describe "sessions/new.html.erb", type: :view do
  it "allows a user to get to login page" do
    visit '/'
    expect(page).to have_content 'Login to Messenger'
    expect(page).to have_button 'Login'
  end

  it "allows a valid user to login" do
    aliceID = User.find_by_name("Alice").id

    visit '/'
    fill_in "Name", with: "Alice"
    fill_in "Password", with: "password"
    click_button "Login"

    assert_equal "/users/#{aliceID}", current_path
  end

  it "notifies a guest with bad credentials" do
    visit '/'
    fill_in "Name", with: "Shannon"
    fill_in "Password", with: "wrongPassword"
    click_button "Login"

    assert page.has_content?("Invalid login credentials.")
    assert_equal root_path, current_path
  end
end
