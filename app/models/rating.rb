require 'validators.rb'
class Rating < ActiveRecord::Base
  include ActiveModel::Validations
  belongs_to :person # who made this rating
  validates_with RatingValidator
  validates_with ParentValidator
end
