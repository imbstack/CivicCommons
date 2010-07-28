class AddTitleAndImageToConversation < ActiveRecord::Migration
  def self.up
    change_table :conversations do |t|
      t.string :title
      t.binary :image
    end
  end

  def self.down
    change_table :conversations do |t|
      t.remove :title
      t.remove :image
    end
  end
end
