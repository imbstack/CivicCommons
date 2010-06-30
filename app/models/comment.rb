class Comment < ActiveRecord::Base
  validates_with ParentValidator
end
