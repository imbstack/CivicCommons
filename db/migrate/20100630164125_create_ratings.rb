class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.datetime :datetime
      t.integer :person_id
      t.integer :parent_type
      t.integer :parent_id
      t.integer :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
  end
end
