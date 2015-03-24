class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string 'answer'
      t.string 'tag'
      t.integer 'question_id'

      t.timestamps
    end
  end
end
