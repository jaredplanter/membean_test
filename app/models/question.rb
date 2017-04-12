class Question < ApplicationRecord
  has_many :answer_choices
  has_many :question_revisions
  accepts_nested_attributes_for :answer_choices

  def update_attributes *attrs
    question_revisions.create(attrs).first
  end

  def answer
    answer_choices.find_by_answer true
  end
end
