class CreateConversationsIssuesJoinTable < ActiveRecord::Migration
  def self.up
      create_table :conversations_issues, :id => false do |t|
        t.integer :conversation_id
        t.integer :issue_id
      end
  end
  def self.down
      drop_table :conversations_issues
  end
end
