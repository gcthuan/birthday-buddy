class AddDobToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dob, :Date
  end
end
