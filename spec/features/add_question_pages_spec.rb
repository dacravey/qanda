require 'rails_helper'

describe "the add a question process" do
  it "adds a new question" do
    visit questions_path
    click_on 'Add a Question'
    fill_in 'Inquiry', :with => 'What color is grass?'
    fill_in 'Tag', :with => 'Ruby'
    click_on '???'
    expect(page).to have_content 'Saved'
  end

  it "gives error when no inquiry is asked" do
    visit new_question_path
    click_on '???'
    expect(page).to have_content 'errors'
  end

  it "edits a question" do
    question = FactoryGirl.create(:question)
    visit edit_question_path(question)
    # save_and_open_page
    fill_in 'Inquiry', :with => 'My First question'
    click_on '???'
    expect(page).to have_content 'successfully'
  end


end
