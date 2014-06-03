require "test_helper"

feature "As a user I want to sort shops for various criteria" do
  scenario "can sort by wifi_down" do
    visit root_path
    click_link 'Download Speed'
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end
  scenario "can sort by wifi_up" do
    visit root_path
    click_link 'Upload Speed'
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end
  scenario "can sort by power" do
    visit root_path
    click_link 'Power Outlets'
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end
  scenario "can sort by noise" do
    visit root_path
    click_link 'Noise'
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end


end
