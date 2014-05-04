require "test_helper"

feature "User Editing profile information -- Happy Path" do
  scenario "As a User I want to be able to change my password using the correct information" do
    sign_in
    visit edit_user_registration_path
    fill_in "Password", with: 'doinkdoinkdoink'
    fill_in "Password confirmation", with: 'doinkdoinkdoink'
    fill_in "Current password", with: 'Target1234'
    click_on 'Update'
    page.must_have_content 'You updated your account successfully.'
  end
end

feature "User Editing profile information -- Sad Path" do
  scenario "As a User I want to be able to change my password with failed password confirmation" do
    sign_in
    visit edit_user_registration_path
    fill_in "Password", with: 'doinkdoinkdoink'
    fill_in "Password confirmation", with: 'doinkdoink'
    fill_in "Current password", with: 'Target1234'
    click_on 'Update'
    page.wont_have_content 'You updated your account successfully.'
  end
end

feature "User Editing profile information -- Sad Path" do
  scenario "As a User I want to be able to change my password with failed Current password" do
    sign_in
    visit edit_user_registration_path
    fill_in "Password", with: 'doinkdoinkdoink'
    fill_in "Password confirmation", with: 'doinkdoink'
    fill_in "Current password", with: 'Targ234'
    click_on 'Update'
    page.wont_have_content 'You updated your account successfully.'
  end
end
