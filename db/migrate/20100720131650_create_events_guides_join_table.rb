class CreateEventsGuidesJoinTable < ActiveRecord::Migration
  def self.up
      create_table :events_guides, :id => false do |t|
        t.integer :event_id
        t.integer :guide_id
      end
  end

  def self.down
      drop_table :events_guides
  end
end
