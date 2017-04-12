class QuestionRevision < ApplicationRecord
  has_many :answer_choices, dependent: :destroy
  belongs_to :question
  accepts_nested_attributes_for :answer_choices

  def answer
    answer_choices.find_by_answer true
  end

  def answer_choices_and_suggestions
    answer_choices_and_suggestions = {}
    answer_choices.each do |answer_choice|
      answer_choices_and_suggestions[answer_choice.name] = answer_choice.suggestions.map &:name
    end
    answer_choices_and_suggestions
  end
end
