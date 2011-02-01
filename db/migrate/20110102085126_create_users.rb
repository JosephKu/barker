class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :fullname
      t.string :password
      t.timestamp :created_date

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
