class Event < ActiveRecord::Base
  has_and_belongs_to_many :conversations
  has_and_belongs_to_many :guides, :class_name => 'Person', :join_table => 'events_guides'
  belongs_to :creator, :class_name => 'Person'
end
