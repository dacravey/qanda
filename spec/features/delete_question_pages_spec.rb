require 'rails_helper'

describe "the delete a question process" do

  it "deletes a question" do
    visit questions_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    question = FactoryGirl.create(:question)
    visit question_path(question)
    click_on 'Delete'
    expect(page).to have_content 'Deleted'
  end


end


# page.accept_alert
