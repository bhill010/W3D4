class CreatePoll < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title, null: false
      t.integer :author_id, null: false

      t.timestamps
    end
    add_index :polls, :title
  end
end