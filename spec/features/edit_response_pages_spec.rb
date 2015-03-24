require 'rails_helper'

describe "the edit a response process" do

  it "edits a response" do
    question = Question.create(:inquiry => 'My First Question', :tag => 'Ruby')
    visit question_path(question)
    click_on 'Add a response'
    fill_in 'Answer', :with => 'My first answer'
    click_on 'Create Response'
    click_on 'Edit Response'
    fill_in 'Answer', :with => ''
    click_on 'Update Response'
  end

  it "gives error when no answer is entered" do
    question = Question.create(:inquiry => 'My First Question', :tag => 'Ruby')
    visit question_path(question)
    click_on 'Add a response'
    fill_in 'Answer', :with => 'My second answer'
    click_on 'Create Response'
    click_on 'Edit Response'
    fill_in 'Answer', :with => ''
    click_on 'Update Response'
    expect(page).to have_content 'errors'
  end

end
