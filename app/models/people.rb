class People < ActiveRecord::Base

  # Include default devise modules. Available modules are:
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
  devise :database_authenticatable, :registerable, :confirmable
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name

  has_many :comments
  has_many :ratings
  has_many :questions
  has_many :answers
end
