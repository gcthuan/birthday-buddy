class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string 	:facebook_id
      t.string 	:username
      t.integer :day
      t.integer :month
      t.integer :year
      t.text	:device_list
      t.string	:gender
      t.timestamps
    end
  end
end
