class AnswerChoice < ApplicationRecord
  belongs_to :question, required: false
  belongs_to :question_revision, required: false
  has_many :suggestions, class_name: "AnswerChoiceSuggestion"

  def create_suggestion name
    suggestions.create name: name
  end
end
