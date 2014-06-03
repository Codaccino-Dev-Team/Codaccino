require "test_helper"
# we are signing in just to deal with the pundit isues. once pundit is fixed we remove the sign_in method"
feature "As a user I want to sort shops for various criteria" do
  scenario "can sort by wifi_down" do
    visit root_path
    sign_in
    click_link 'Download Speed'
    page.body.index(shops(:shop_1).name) <  page.body.index(shops(:shop_7).name)
  end
  scenario "can sort by wifi_up" do
    visit root_path
    sign_in
    click_link 'Upload Speed'
    page.body.index(shops(:shop_2).name) <  page.body.index(shops(:shop_4).name)
  end
  scenario "can sort by power" do
    visit root_path
    sign_in
    click_link 'Power Outlets'
    page.body.index(shops(:shop_4).name) <  page.body.index(shops(:shop_3).name)
  end
  scenario "can sort by noise" do
    visit root_path
    sign_in
    click_link 'Noise'
    page.body.index(shops(:shop_2).name) <  page.body.index(shops(:shop_4).name)
  end


end
