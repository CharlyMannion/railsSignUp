require 'test_helper'

feature "User visits the index page" do
  scenario "successfully" do
    visit "/"

    expect(page).to have_content "This is the index page."
  end
end
