class CreateQuestion < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :poll_id, null: false
      t.string :questions_asked, null: false
    end
  end
end
