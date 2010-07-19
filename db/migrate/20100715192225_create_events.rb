class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.datetime :when
      t.string :where
      t.integer :moderator_id

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
