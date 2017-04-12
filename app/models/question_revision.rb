class QuestionRevision < ApplicationRecord
  has_many :answer_choices, dependent: :destroy
  belongs_to :question
  accepts_nested_attributes_for :answer_choices

  def answer
    answer_choices.find_by_answer true
  end
end
