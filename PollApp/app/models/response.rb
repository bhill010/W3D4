# == Schema Information
#
# Table name: responses
#
#  id               :integer          not null, primary key
#  answer_choice_id :integer          not null
#  respondent_id    :integer          not null
#

class Response < ActiveRecord::Base
  validates :answer_choice_id, presence: true
  validate :response_error_check

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :respondent_id,
    class_name: :User

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    question_result = self.question

    question_result.responses.where.not(id: self.id)
  end

  def respondent_already_answered?
    sibling_responses.exists?(respondent_id: self.respondent_id)
  end

  def response_error_check
    if respondent_already_answered?
      self.errors[:answer] << "already given for this question"
    end
  end
end
