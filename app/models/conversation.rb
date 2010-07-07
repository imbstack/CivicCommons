class Conversation < ActiveRecord::Base
  include ActiveModel::Validations
  has_one :person, :foreign_key => :moderator
  has_and_belongs_to_many :issues
  has_many :events
  # has_many :comments # if we later decide to enable comments on Conversations
  has_many :questions
  has_many :answers
 # validates :moderator, :presence => :true
end
