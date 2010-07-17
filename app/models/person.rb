class Person < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :first_name, :last_name, :email, :password, :password_confirmation

  has_many :comments
  has_many :ratings
  has_many :questions
  has_many :answers


  def name=(value)
    @name = value
    names = value.split(' ')
    first_name, last_name = names.first, names.last
  end


  def name
    @name ||= "%s %s" % [self.first_name, self.last_name]
  end


end
