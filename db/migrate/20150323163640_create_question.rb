class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string 'inquiry'
      t.integer 'response_id'
      t.timestamps
    end
  end
end
