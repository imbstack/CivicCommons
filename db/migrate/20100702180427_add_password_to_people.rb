class AddPasswordToPeople < ActiveRecord::Migration
  def self.up
    change_table :people do |t|
      t.string :password
    end
  end

  def self.down
    change_table :people do |t|
      t.remove :password
    end
  end
end
