require "test_helper"

feature "As a user I want to sort shops for various criteria" do
  scenario "can sort by wifi_down" do
    sign_in
    visit root_path
    click_on 'Upload Speed'
    assert_operator page.body.index(shops(:shop_1).name), :<,  page.body.index(shops(:shop_2).name)

  end
  scenario "can sort by wifi_up" do
    sign_in
    visit root_path
    click_on 'Download Speed'
    assert_operator page.body.index(shops(:shop_7).name), :<,  page.body.index(shops(:shop_6).name)
  end
  scenario "can sort by power" do
    sign_in
    visit root_path
    click_on 'Power Outlets'
    assert_operator page.body.index(shops(:shop_1).name), :<,  page.body.index(shops(:shop_2).name)
  end
  scenario "can sort by noise" do
    sign_in
    visit root_path
    click_on 'Noise'
    assert_operator page.body.index(shops(:shop_1).name), :<,  page.body.index(shops(:shop_5).name)
  end


end
