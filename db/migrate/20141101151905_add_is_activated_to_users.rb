class AddIsActivatedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_activated, :boolean
  end
end
