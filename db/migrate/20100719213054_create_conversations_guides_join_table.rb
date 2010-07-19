class CreateConversationsGuidesJoinTable < ActiveRecord::Migration
  def self.up
      create_table :conversations_guides, :id => false do |t|
        t.integer :conversation_id
        t.integer :guide_id
      end
  end

  def self.down
    drop_table :conversations_guides
  end
end
