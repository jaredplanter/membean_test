# MemBean assignment


## Story 1: As an editor, I should be able to create a new revision for a question

To test:
```ruby
# Create a question
question = Question.create name: 'What color is a banana?', 
                           answer_choices_attributes: [{name: 'Orange', letter: 'A'},
                                                       {name: 'Pink', letter: 'B'}, 
                                                       {name: 'Yellow', letter: 'C', answer: true}, 
                                                       {name: 'Green', letter: 'D'}]
question.answer_choices
question.answer
question.class


# Update the question
question_revision = question.update_attributes name: 'What color is a ripe banana?', 
                                               answer_choices_attributes: [{name: 'Orange/Blue', letter: 'A'}, 
                                                                           {name: 'Pink/Yellow', letter: 'B'}, 
                                                                           {name: 'Yellow/Black', letter: 'C', answer: true},                                                                            {name: 'Blue/Green', letter: 'D'}]
question_revision.answer_choices
question_revision.answer
question_revision.class
```
