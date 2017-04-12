class Question < ApplicationRecord
  has_many :answer_choices

  after_create do
    ["A", "B", "C", "D"].each do |letter|
      answer_choices.create letter: letter
    end
  end

  def answer
    answer_choices.find_by_answer true
  end
end
