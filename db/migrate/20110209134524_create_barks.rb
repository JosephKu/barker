class CreateBarks < ActiveRecord::Migration
  def self.up
    create_table :barks do |t|
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :barks
  end
end
