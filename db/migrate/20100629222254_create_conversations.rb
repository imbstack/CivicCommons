class CreateConversations < ActiveRecord::Migration
  def self.up
    create_table :conversations do |t|
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :issue_id
      t.integer :moderator
      t.string :summary

      t.timestamps
    end
  end

  def self.down
    drop_table :conversations
  end
end
