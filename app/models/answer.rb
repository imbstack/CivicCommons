class Answer < ActiveRecord::Base
  belongs_to :question
  has_one :person # the "answerer"
  has_many :comments, :as => :commentable
  has_many :ratings, :as => :rateable
end
