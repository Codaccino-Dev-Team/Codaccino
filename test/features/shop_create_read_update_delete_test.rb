require 'test_helper'

feature 'ShopCreateReadUpdateDelete' do
    scenario 'Adding a coffeeshop - happy path' do
        visit root_path
        sign_in
        visit new_shop_path
        page.must_have_content 'Where are you today?'
        fill_in 'Name', with: shops(:shop_1).name
        fill_in 'Address', with: shops(:shop_1).address
        fill_in 'Site', with: shops(:shop_1).site
        fill_in 'Phone', with: shops(:shop_1).phone
        fill_in 'Wifi up', with: shops(:shop_1).wifi_up
        fill_in 'Wifi down', with: shops(:shop_1).wifi_down
        fill_in 'Outlet rating', with: shops(:shop_1).noise
        fill_in 'Noise', with: shops(:shop_1).noise
        fill_in 'Hrs wkday', with: shops(:shop_1).hrs_wkday
        fill_in 'Hrs saturday', with: shops(:shop_1).hrs_saturday
        fill_in 'Hrs sunday', with: shops(:shop_1).hrs_sunday
        click_on 'Commit the Coffeeshop'
        page.must_have_content "#{SUCCESS_MESSAGE}"
    end
    scenario 'Adding a coffeeshop - sad path' do
        visit new_shop_path
        sign_in
        page.must_have_content 'Where are you today?'
        fill_in 'Name', with: shops(:shop_1).name
        fill_in 'Address', with: shops(:shop_1).address
        click_on 'Commit the Coffeeshop'
        page.must_have_content "#{ERROR_MESSAGE}"
    end


    scenario 'Root path must index coffeeshops' do
        visit root_path
        page.must_have_content shops(:shop_1).name
        page.must_have_content shops(:shop_2).name
    end
    scenario 'Shops index should have key coffeeshop info' do
        visit shops_path
        page.must_have_content shops(:shop_1).name
        page.must_have_content shops(:shop_1).address
        page.must_have_content "Wifi Upload Speed: #{shops(:shop_1).wifi_up} mbps"
        page.must_have_content "Wifi Download Speed: #{shops(:shop_1).wifi_down} mbps"
        page.must_have_content "Power Outlet Rating: #{shops(:shop_1).outlet_rating}"
        page.must_have_content "Noise Level Rating: #{shops(:shop_1).noise}"
    end
    scenario 'Click shop name to see show page' do
        visit shops_path
        click_on shops(:shop_2).name
        page.must_have_content shops(:shop_2).address
        assert current_path == shop_path(shops(:shop_2))
    end
    scenario 'The show for shops should have every field' do
        visit root_path
        click_on shops(:shop_3).name
        page.must_have_content shops(:shop_3).name
        page.must_have_content shops(:shop_3).address
        page.must_have_content "Website"
        page.must_have_content shops(:shop_3).phone
        page.must_have_content "Wifi Upload Speed: #{shops(:shop_3).wifi_up} mbps"
        page.must_have_content "Wifi Download Speed: #{shops(:shop_3).wifi_down} mbps"
        page.must_have_content "Power Outlet Rating: #{shops(:shop_3).outlet_rating}"
        page.must_have_content "Noise Level Rating: #{shops(:shop_3).noise}"
        page.must_have_content shops(:shop_3).hrs_wkday
        page.must_have_content shops(:shop_3).hrs_saturday
        page.must_have_content shops(:shop_3).hrs_sunday
    end


    scenario 'After login admin can edit shop information - happy path' do
        visit  root_path
        click_on 'Log In'
        sign_in
        click_on shops(:shop_3).name
        first(:link, 'edit').click
        fill_in 'Name', with: shops(:shop_6).name
        fill_in 'Hrs wkday', with: shops(:shop_6).hrs_wkday
        click_on 'Commit the Coffeeshop'
        page.must_have_content shops(:shop_6).name
        page.must_have_content shops(:shop_6).hrs_wkday
        page.must_have_content "#{SUCCESS_MESSAGE}"
    end

     scenario 'After login admin can edit shop information - sad path' do
        visit root_path
        click_on 'Log In'
        sign_in
        click_on shops(:shop_3).name
        click_on 'edit shop'
        fill_in 'Phone', with: "Adamadam12"
        click_on 'Commit the Coffeeshop'
        page.must_have_content "#{ERROR_MESSAGE}"
    end

    scenario 'After login admin can edit shop information' do
        visit root_path
        click_on 'Log In'
        sign_in
        click_on shops(:shop_3).name
        first(:link, 'delete').click
        page.must_have_content "#{DELETE_MESSAGE}"
    end

end
