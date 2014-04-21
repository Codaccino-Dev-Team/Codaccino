require "test_helper"

feature "Comments" do
  scenario "Shop pages shows comments" do
    visit shop_path 1
    page.must_have_content comments(:comment_1).content
    page.wont_have_content comments(:comment_2).content
  end
end
