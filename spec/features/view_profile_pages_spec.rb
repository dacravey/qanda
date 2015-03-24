require 'rails_helper'
include Warden::Test::Helpers
Warden.test_mode!

describe "the user profile process" do
  it "adds a new question" do
    visit edit_user_registration_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    click_on 'Add a Question'
    fill_in 'Inquiry', :with => 'What color is grass?'
    fill_in 'Tag', :with => 'Ruby'
    click_on 'Log in'
    expect(page).to have_content 'Saved'
  end
end
