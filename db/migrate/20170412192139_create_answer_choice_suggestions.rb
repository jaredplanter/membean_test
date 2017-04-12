class CreateAnswerChoiceSuggestions < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_choice_suggestions do |t|
      t.integer :answer_choice_id
      t.string :name

      t.timestamps
    end
  end
end
