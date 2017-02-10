class AddTimeToAnswerChoices < ActiveRecord::Migration
  def change
    add_column(:answer_choices, :created_at, :datetime)
    add_column(:answer_choices, :updated_at, :datetime)
  end
end
