class Conversation < ActiveRecord::Base
  include ActiveModel::Validations
  has_one :person, :foreign_key => :moderator
  has_and_belongs_to_many :issue
 # validates :moderator, :presence => :true
end
