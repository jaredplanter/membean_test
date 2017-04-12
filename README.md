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
# Verify that the object is a Question
question.class


# Update the Question
question_revision = question.update_attributes name: 'What color is a ripe banana?', 
                                               answer_choices_attributes: [{name: 'Orange/Blue', letter: 'A'}, 
                                                                           {name: 'Pink/Yellow', letter: 'B'}, 
                                                                           {name: 'Yellow/Black', letter: 'C', answer: true},                                                                            {name: 'Blue/Green', letter: 'D'}]
question_revision.answer_choices
question_revision.answer
# Verify that the new object is a QuestionRevision
question_revision.class
```

## Story 2: As a reviewer, I should be able to suggest an alternative

Assuming you are in the same `rails console` as the previous example:
```ruby
# View the answer choices
question_revision.answer_choices

# Make a new suggestion for the first answer choice
first_answer_choice = question_revision.answer_choices.first
first_answer_choice.create_suggestion 'Yellow/Red'
first_answer_choice.suggestions
```

## Story 3: As an editor, I should be able to see all the suggested alternatives

The code in the Story 2 description demonstrates the ability to check the suggestion for a single `AnswerChoice`. On the front end when this information is presented as a form, `.suggestions` would be called on each `AnswerChoice` being displayed. Either in a list, a modal or however we wanted. That would make all suggestions available to the editor.

I wrote a method to display the answer choices and their suggestions in a hash, for easy viewing in this assignment.

Assuming you are in the same `rails console` as the previous example:
```ruby
# Make some more suggestions
question_revision.answer_choices.first.create_suggestion 'Gold/Brown'
question_revision.answer_choices.second.create_suggestion 'Purple/Green'
question_revision.answer_choices[2].create_suggestion 'Red/Blue'
question_revision.answer_choices.last.create_suggestion 'Emerald/Yellow'

# View suggestions on all answer choices
question_revision.answer_choices_and_suggestions
```
