require 'test_helper'

feature "User visits the register page" do
  scenario "successfully" do
    visit "/register"

    expect(page).to have_content "Email"
    expect(page).to have_content "Password"
    expect(page).to have_content "Register"

    click_on "Register"
  end
end
