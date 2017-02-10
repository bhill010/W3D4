# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Users
User.destroy_all
u1 = User.create!(user_name: "Brandon")
u2 = User.create!(user_name: "Scott")

#Polls
Poll.destroy_all
p1 = Poll.create!(title: "Crazy Cats", author_id: 1)
p2 = Poll.create!(title: "Life away from AA", author_id: 2)

#Questions
Question.destroy_all
q1 = Question.create!(poll_id: 1, questions_asked: "What's your favorite Crazy Cat?")
q2 = Question.create!(poll_id: 1, questions_asked: "Why do you like that Crazy Cat?")
q3 = Question.create!(poll_id: 2, questions_asked: "What did you learn from AA?")
q4 = Question.create!(poll_id: 2, questions_asked: "Do you miss AA?")

#AnswerChoices
AnswerChoice.destroy_all
a1 = AnswerChoice.create!(question_id: 1, answer_given: "My favorite Crazy Cat is the black cat!")
a2 = AnswerChoice.create!(question_id: 1, answer_given: "My favorite Crazy Cat is the red cat!")
a3 = AnswerChoice.create!(question_id: 2, answer_given: "I like that Crazy Cat because it is cool!")
a4 = AnswerChoice.create!(question_id: 2, answer_given: "I like that Crazy Cat because it is very beautiful!")

a5 = AnswerChoice.create!(question_id: 3, answer_given: "Ruby on Rails!")
a6 = AnswerChoice.create!(question_id: 3, answer_given: "Not much.")
a7 = AnswerChoice.create!(question_id: 4, answer_given: "Yes")
a8 = AnswerChoice.create!(question_id: 4, answer_given: "No")

#Responses
Response.destroy_all
r1 = Response.create!(answer_choice_id: 1, respondent_id: 1)
r2 = Response.create!(answer_choice_id: 3, respondent_id: 1)
r3 = Response.create!(answer_choice_id: 5, respondent_id: 1)
r4 = Response.create!(answer_choice_id: 8, respondent_id: 1)

r5 = Response.create!(answer_choice_id: 2, respondent_id: 2)
r6 = Response.create!(answer_choice_id: 4, respondent_id: 2)
r7 = Response.create!(answer_choice_id: 5, respondent_id: 2)
r8 = Response.create!(answer_choice_id: 7, respondent_id: 2)
