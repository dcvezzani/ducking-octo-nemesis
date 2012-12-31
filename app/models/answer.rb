class Answer < ActiveRecord::Base
  attr_accessible :person_id, :question_id, :value, :person, :question

  belongs_to :person
  belongs_to :question
end
