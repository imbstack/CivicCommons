require 'parent_validator'

class Comment < ActiveRecord::Base
  validates_with ParentValidator
  has_many :comments, :as => :commentable
  has_many :ratings, :as => :rateable
  belongs_to :commentable, :polymorphic => true
end
