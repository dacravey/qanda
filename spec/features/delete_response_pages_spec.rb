require 'rails_helper'

describe "the delete a response process" do

  it "deletes a response" do
    visit questions_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    question = FactoryGirl.create(:question)
    visit question_path(question)
    click_on 'Add a response'
    fill_in 'Answer', :with => 'My first answer'
    click_on 'Create Response'
    click_on 'Delete Response'
    expect(page).to have_content 'deleted'
  end

end
