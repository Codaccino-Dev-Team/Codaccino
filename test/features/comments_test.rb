require 'test_helper'

feature 'Comments' do
  scenario 'Shop pages shows comments' do
    visit shop_path 1
    page.must_have_content comments(:comment_1).content
    page.wont_have_content comments(:comment_2).content
  end
  scenario 'Add a comment' do
    @comment = 'Less than 500 Characters!'

    visit shop_path 1
    click_on 'Add a Comment'

    fill_in 'comment_content', with: @comment
    click_on 'Add Comment'

    page.must_have_content @comment
  end
end
