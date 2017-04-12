require 'rails_helper'

RSpec.describe AnswerChoice, type: :model do
  subject(:answer_choice) { AnswerChoice.create name: 'Blue' }

  describe '#create_suggestion' do
    it 'creates a new AnswerChoiceSuggestion' do
      create_suggestion = answer_choice.create_suggestion 'Green'
      expect(create_suggestion).to be_a AnswerChoiceSuggestion
    end
  end
end
