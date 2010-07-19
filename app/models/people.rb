class People < ActiveRecord::Base

  # Include devise modules. Available modules are:
  # :token_authenticatable
  # :confirmable
  # :lockable
  # :timeoutable
  # :database_authenticatable
  # :registerable,
  # :recoverable
  # :rememberable
  # :trackable
  # :validatable
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name

  has_many :comments
  has_many :ratings
  has_many :questions
  has_many :answers
  has_and_belongs_to_many :conversations, :join_table => 'conversations_guides', :foreign_key => :guide_id
end
