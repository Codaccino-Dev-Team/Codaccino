require "test_helper"

feature "As a user I want to sort shops for various criteria" do
  scenario "can sort by wifi_down" do
    skip
    visit root_path
    find("option[value='download']").click 
    current_path.must_include "wifi_down"
  end
  scenario "can sort by wifi_up" do
    skip
    visit root_path  
    find("option[value='upload']").click
    current_path.must_include "wifi_up"
  end
  scenario "can sort by power" do
    skip
    visit root_path
    find("option[value='power']").click
    current_path.must_include "power"
  end
  scenario "can sort by noise" do
    skip
    visit root_path
    find("option[value='noise']").click
    current_path.must_include "noise"
  end
end
