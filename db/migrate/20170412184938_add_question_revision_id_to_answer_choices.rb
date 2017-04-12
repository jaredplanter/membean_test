class AddQuestionRevisionIdToAnswerChoices < ActiveRecord::Migration[5.0]
  def change
    add_column :answer_choices, :question_revision_id, :integer
  end
end
