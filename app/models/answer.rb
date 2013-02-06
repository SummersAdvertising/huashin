class Answer < ActiveRecord::Base
  belongs_to :question
  attr_accessible :answererName, :content, :question_id
end
