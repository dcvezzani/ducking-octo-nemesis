class QuestionCategory < ActiveRecord::Base
  attr_accessible :value

  has_many :questions
end
