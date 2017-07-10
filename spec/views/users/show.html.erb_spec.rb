require 'rails_helper'

RSpec.describe "users/show.html.erb", type: :view do
  it "allows a user to get to their homepage" do
    visit '/'
    fill_in "Name", with: "Alice"
    fill_in "Password", with: "password"
    click_button "Login"

    expect(page).to have_content 'Welcome Alice'
  end

  it "does not allow other users to get to a user's homepage" do
    visit '/users/7'

    expect(page).to have_content 'Unauthorized to visit this page'
    assert page.has_content?("Unauthorized to visit this page")
    assert_equal login_path, current_path
  end

end
