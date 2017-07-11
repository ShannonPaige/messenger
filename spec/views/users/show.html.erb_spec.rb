require 'rails_helper'

RSpec.describe "users/show.html.erb", type: :view do
  before(:all) do
    @aliceID = User.find_by_name("Alice").id
  end

  it "allows a user to get to their homepage" do
    visit '/'
    fill_in "Name", with: "Alice"
    fill_in "Password", with: "password"
    click_button "Login"

    visit "/users/#{@aliceID}"

    expect(page).to have_content 'Welcome Alice'
  end

  it "does not allow guests to get to a user's homepage" do

    visit '/'
    fill_in "Name", with: "Bob"
    fill_in "Password", with: "password"
    click_button "Login"

    visit "/users/#{@aliceID}"

    assert page.has_content?("Welcome Bob")
  end

  it "does not allow other users to get to a user's homepage" do
    visit "/users/#{@aliceID}"

    assert_equal root_path, current_path
  end

end
