class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.datetime :datetime
      t.integer :owner
      t.integer :parent_type
      t.integer :parent_id
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
