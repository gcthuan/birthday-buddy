class User < ActiveRecord::Base
  serialize :device_list, Array
  validates :username, presence: true, uniqueness: true
  validates :facebook_id, presence: true, uniqueness: true
  validates :day, presence: true
  validates :month, presence: true
  validates :year, presence: true
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user

  zodiac_reader :dob

  def same_zodiac
  	User.where(zodiac_sign_id: self.zodiac_sign_id).where("id != ?", self.id)
  end

  def same_day_month
    User.where(day: self.day, month: self.month).where("id != ?", self.id)
  end

end
