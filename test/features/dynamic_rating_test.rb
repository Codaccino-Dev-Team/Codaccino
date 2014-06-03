require "test_helper"

feature "DynamicRating" do
  scenario "user rates shop" do
    visit shops_path
    #first(:wifi_up_rating) with: 5  
    #fill_in first("input[type='text']"), with:5
    #fill_in.first("input[type='text']"), with:5
    #
    fill_in "Your wifi up rating", with: 5
    fill_in "Your wifi down rating", with: 6
    fill_in "Your Outlet Rating", with: 7
    fill_in "Your Noise Rating", with: 8
    click_on 'Rate this Coffeeshop!'

  end
end
