class Question < ApplicationRecord
  has_many :answer_choices
  accepts_nested_attributes_for :answer_choices

  end

  def answer
    answer_choices.find_by_answer true
  end
end
