class Question < ActiveRecord::Base
  has_one :person # the "asker"
  has_many :comments, :as => :commentable
  has_many :ratings, :as => :rateable
end
