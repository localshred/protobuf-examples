class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :guid
      t.string :email
      t.string :password
      t.string :name
      t.integer :status
      t.datetime :last_login

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
