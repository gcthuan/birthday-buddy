class AddZodiacSignIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :zodiac_sign_id, :integer
    add_index  :users, :zodiac_sign_id
    
    User.all.each do |user|
      user.send(:update_sign_id)
      user.save
    end
  end
end
