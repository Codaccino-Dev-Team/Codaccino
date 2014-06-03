ENV["RAILS_ENV"] = "test"
require 'simplecov'
SimpleCov.start 'rails'
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "minitest/pride"


class ActiveSupport::TestCase

  fixtures :all

    def sign_in (admin = :admin)
      visit new_user_session_path
      fill_in "Email", with: users(admin).email
      fill_in "Password",with: 'Target1234'
      click_on "Sign in"
    end

    def rating_entered
      click_on shops(:shop_2).name
      click_link 'Rate this Shop'
    fill_in 'Wifi up', with: 3
    fill_in 'Wifi down', with: 3
    fill_in 'Noise', with: 3
    fill_in 'Outlet rating', with: 3
    end

    def save_test
      save_and_open_page
    end
end
