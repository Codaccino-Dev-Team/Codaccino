require "test_helper"

feature "As a user I want to sort shops for various criteria" do
  scenario "can sort by wifi_down" do
    sign_in
    visit root_path
    click_on 'Upload Speed'
    puts "#{page.body.index(shops(:shop_4).name)}"
    puts "#{page.body.index(shops(:shop_3).name)}"
    assert_operator page.body.index(shops(:shop_1).name), :<,  page.body.index(shops(:shop_2).name)

  end
  scenario "can sort by wifi_up" do
    sign_in
    visit root_path
    click_on 'Download Speed'
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end
  scenario "can sort by power" do
    sign_in
    visit root_path
    click_on 'Power Outlets'
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end
  scenario "can sort by noise" do
    sign_in
    visit root_path
    click_on 'Noise'
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end


end
