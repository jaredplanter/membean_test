class Question < ApplicationRecord
  has_many :answer_choices

  end

  def answer
    answer_choices.find_by_answer true
  end
end
