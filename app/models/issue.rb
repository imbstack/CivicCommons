class Issue < ActiveRecord::Base
  validates :description, :presence => true, :length => { :minimum => 5 }
  has_and_belongs_to_many :conversations
end
