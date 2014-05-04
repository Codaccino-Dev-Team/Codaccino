require "test_helper"

feature "As a user I want to sort shops for various criteria" do
  scenario "can sort by wifi_down" do
   skip 'skipping all tests associated with JS until we learn how to test in class.'
    sign_in
    visit root_path
    save_and_open_page
    find("option[value='download']").click
    # page.execute_script()
    save_and_open_page
#    find("option[value='download']").click
#   save_and_open_page
    puts " Should be number one #{page.body.index('Urban City Drive-Thru and Louge')}"
    puts " Should be number two #{page.body.index('Richmond Beach Coffee Company')}"
    page.body.index('Richmond Beach Coffee Company') <  page.body.index('Terabtye')

  end
  scenario "can sort by wifi_up" do
   skip 'using other test to validate pattern'
    visit root_path
    sign_in
    find("option[value='upload']").click
    current_path.must_include "wifi_up"
  end
  scenario "can sort by power" do
    skip 'using other test to validate pattern'
    visit root_path
    sign_in
    find("option[value='power']").click
    current_path.must_include "power"
  end
  scenario "can sort by noise" do
    skip 'using other test to validate pattern'
    visit root_path
    sign_in

    find("option[value='noise']").click
    current_path.must_include "noise"
  end


end
