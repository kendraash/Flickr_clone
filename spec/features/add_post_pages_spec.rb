require 'rails_helper'

describe 'path for adding a post' do
  @user = FactoryGirl.create(:user)
  it "adds a new post" do
    visit user_path(@user)
    click_on_link "New Post"
    fill_in "Caption", :with => "Tree"
    attach_file "image", File.absolute_path(green.jpg)
    click_on "Submit"
    expect(page).to have_content "Tree"
  end
end
