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

## Story 2: As a reviewer, I should be able to suggest an alternative

To test:
```ruby
# Create a question
question = Question.create name: 'What color is a banana?', 
                           answer_choices_attributes: [{name: 'Orange', letter: 'A'},
                                                       {name: 'Pink', letter: 'B'}, 
                                                       {name: 'Yellow', letter: 'C', answer: true}, 
                                                       {name: 'Green', letter: 'D'}]
question.answer_choices

# Take the first answer choice, and create a suggestion
first_answer_choice = question.answer_choices.first
first_answer_choice.create_suggestion 'Blue'
first_answer_choice.suggestions
```
