class AddTagToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :tag, :string
    remove_column :responses, :tag, :string
  end
end
