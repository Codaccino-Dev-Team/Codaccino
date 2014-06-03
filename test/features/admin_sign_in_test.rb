require "test_helper"

feature "AdminSignIn" do
  scenario "Able to sign into application" do
    visit new_user_session_path
    fill_in "Email", with: users(:admin).email
    fill_in "Password", with: 'Target1234'
    click_button "Sign in"
    # maybe send in message that says sucessfully logged in
  end

  scenario 'Must be logged in to edit store information' do
    visit root_path
    page.wont_have_link "edit"
  end


  scenario 'Must be logged in to delete store information' do
    visit root_path
    page.wont_have_link "delete"
  end

  scenario 'Must be able to sign  out' do
    visit root_path
    sign_in
    click_on 'Logout'
    page.must_have_content 'Signed out successfully'
  end

  scenario "sign in with twitter works" do
    visit root_path
    click_on "Log In"
    OmniAuth.config.test_mode = true
    Capybara.current_session.driver.request.env['devise.mapping'] = Devise.mappings[:user]
    Capybara.current_session.driver.request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
    OmniAuth.config.add_mock(:twitter,
                            {
                            uid: '12345',
                            info: { nickname: 'test_twitter_user'},
                            })
    click_on "Sign in with Twitter"

    page.must_have_content "test_twitter_user-changeme@twitter.example.com, you are signed in!"
  end



end
