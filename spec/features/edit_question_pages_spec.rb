require 'rails_helper'

describe "the edit a question process" do

  it "edits a question" do
    visit questions_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    question = FactoryGirl.create(:question)
    visit question_path(question)
    click_on 'Edit'
    fill_in 'Inquiry', :with => 'My First question'
    fill_in 'Tag', :with => 'Ruby'
    click_on '???'
    expect(page).to have_content 'successfully'
  end

  it "gives error when no inquiry is entered" do
    visit questions_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    question = FactoryGirl.create(:question)
    visit question_path(question)
    click_on 'Edit'
    fill_in 'Inquiry', :with => ''
    fill_in 'Tag', :with => 'Ruby'
    click_on '???'
    expect(page).to have_content 'errors'
  end

  it "gives error when no tag is entered" do
    visit questions_path
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    question = FactoryGirl.create(:question)
    visit question_path(question)
    click_on 'Edit'
    fill_in 'Inquiry', :with => 'My First Question'
    fill_in 'Tag', :with => ''
    click_on '???'
    expect(page).to have_content 'errors'
  end

end
