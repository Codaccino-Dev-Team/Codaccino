require "test_helper"

feature "Admin User Visitor have different modification and access policies" do

  scenario "A visitor attempts to modify store noise rating" do
    visit root_path
    click_on shops(:shop_5).name
    page.wont_have_content 'Rate this Shop'
  end

  scenario 'User attempts to modify store noise rating' do
    skip 'Skipping User attempst to modify store noise rating until requirements are set'
    sign_in(:user)
    rating_entered
    click_on 'Enter your rating!'
    page.must_have_content "Rating Saved"
  end

  scenario 'Admin attempts to modify store noise rating' do
    skip 'Skipping Admin attempts to modify store noise rating until requirements are set'
    sign_in(:admin)
    rating_entered
    click_on 'Enter your rating!'
    page.must_have_content "Rating Saved"
  end

  scenario 'Updating dynamic rating changes the shops rating' do
    @old_noise = shops(:shop_1).noise
    @new_noise = @old_noise + 1
    @old_wifi_up = shops(:shop_1).wifi_up
    @new_wifi_up = @old_wifi_up + 1
    @old_wifi_down = shops(:shop_1).wifi_down
    @new_wifi_down = @old_wifi_down + 1

    visit root_path
    sign_in
    click_on shops(:shop_1).name
    click_on 'Rate this Shop'
    fill_in 'Wifi up', with: @new_wifi_up
    fill_in 'Wifi down', with: @new_wifi_down
    fill_in 'Noise', with: @new_noise
    click_on 'Rate this Coffeeshop!'
    page.wont_have_content "Wifi Up: #{ @old_wifi_up }"
    page.wont_have_content "Wifi Down: #{ @old_wifi_down }"
    page.wont_have_content "Noise: #{ @old_noise }"
  end

end
