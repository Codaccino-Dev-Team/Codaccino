require "test_helper"

feature "ViewLandingPage" do
  scenario "A user can learn about codaccino" do
    visit root_path
    page.must_have_content "Codaccino"
  end

end
