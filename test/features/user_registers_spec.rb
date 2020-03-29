require 'test_helper'

feature "User registers" do
  scenario "unsuccessfully" do
    visit "/register"
    fill_in "Email", with: "not en email address"
    fill_in "Password", with: "Password"
    click_on "Register"

    expect(page).to have_content "Email is not an email"
    expect(page).not_to have_content "This is the index page."
  end

  scenario "successfully" do
    visit "/register"
    fill_in "Email", with: "hello@example.com"
    fill_in "Password", with: "Password"
    click_on "Register"

    expect(page).to have_content "This is the index page."
  end
end
