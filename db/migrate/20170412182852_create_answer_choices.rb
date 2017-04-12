class CreateAnswerChoices < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id
      t.string :name
      t.string :letter
      t.boolean :answer, default: false

      t.timestamps
    end
  end
end
