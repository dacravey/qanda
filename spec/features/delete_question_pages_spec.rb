require 'rails_helper'

describe "the delete a question process" do

  it "deletes a question" do
    question = Question.create(:inquiry => 'My First Question', :tag => 'Ruby')
    visit question_path(question)
    click_on 'Delete'
    expect(page).to have_content 'Deleted'
  end


end


# page.accept_alert
