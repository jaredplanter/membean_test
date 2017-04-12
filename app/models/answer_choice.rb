class AnswerChoice < ApplicationRecord
  belongs_to :question, required: false
end
