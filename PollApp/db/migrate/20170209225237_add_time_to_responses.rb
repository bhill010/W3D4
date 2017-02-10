class AddTimeToResponses < ActiveRecord::Migration
  def change
    add_column(:responses, :created_at, :datetime)
    add_column(:responses, :updated_at, :datetime)
  end
end
