class User < ActiveRecord::Base
  serialize :device_list, Array
  validates :username, presence: true, uniqueness: true
  validates :facebook_id, presence: true, uniqueness: true
  validates :day, presence: true
  validates :month, presence: true
  validates :year, presence: true
end
