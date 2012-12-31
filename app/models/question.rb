class Question < ActiveRecord::Base
  attr_accessible :category_id, :notes_required_for_response, :order_position, :phrase, :category

  belongs_to :category, class_name: "QuestionCategory"
end
