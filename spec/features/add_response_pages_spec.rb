require 'rails_helper'

describe "the add a response process" do
  it "adds a new response" do
    visit questions_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    question = FactoryGirl.create(:question)
    visit question_path(question)
    click_on 'Add a response'
    fill_in 'Answer', :with => 'I think the answer is always 42.'
    click_on 'Create Response'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no answeris entered" do
    visit questions_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    question = FactoryGirl.create(:question)
    visit question_path(question)
    click_on 'Add a response'
    fill_in 'Answer', :with => ''
    click_on 'Create Response'
    expect(page).to have_content 'errors'
  end

end
