ENV["RAILS_ENV"] = "test"
require 'simplecov'
SimpleCov.start 'rails'
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"
require "minitest/rails/capybara"
require "minitest/pride"
require 'capybara/poltergeist'
# Capybara.default_driver = :webkit
Capybara.javascript_driver = :poltergeist


class ActiveSupport::TestCase

  fixtures :all

    def sign_in (admin = :abigail)
      visit new_user_session_path
      fill_in "Email", with: users(admin).email
      fill_in "Password",with: 'Target1234'
      click_on "Sign in"
    end

    def rating_entered(category = 'Noise')
      click_on shops(:shop_2).name
      fill_in "#{category}", with: 2
    end

    def save_test
      save_and_open_page
    end



end

