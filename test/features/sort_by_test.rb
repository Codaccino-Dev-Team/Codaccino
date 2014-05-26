require "test_helper"

feature "As a user I want to sort shops for various criteria" do
  scenario "can sort by wifi_down" do
    skip 'waiting for adam to fix the pundit stuff'
    visit root_path
    click_link 'Download Speed'
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end
  scenario "can sort by wifi_up" do
    skip 'waiting for adam to fix the pundit stuff'
    visit root_path
    click_link 'Upload Speed'
    save_test
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end
  scenario "can sort by power" do
  skip 'waiting for adam to fix the pundit stuff'

    visit root_path
    click_link 'Power Outlets'
    save_test
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end
  scenario "can sort by noise" do
  skip 'waiting for adam to fix the pundit stuff'
  visit root_path
    click_link 'Noise'
    save_test
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')
  end


end
