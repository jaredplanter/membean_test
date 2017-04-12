require 'rails_helper'

RSpec.describe Question, type: :model do
  subject(:question) { Question.create name: 'First question?' }

  describe '#update_attributes' do
    context 'When a Question is updated' do
      it 'creates a QuestionRevision' do
        updated_question = question.update_attributes(name: 'Second question?')
        expect(updated_question).to be_a QuestionRevision
      end
    end
  end
end
