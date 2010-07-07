require 'validators.rb'
class Rating < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :person # who made this rating
  validates_with RatingValidator
  validates_with ParentValidator
  # FIXME: Polymorphic relation to Comment, Question, or Answer
  belongs_to :rateable, :polymorphic => true
end
