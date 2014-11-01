class User < ActiveRecord::Base
  serialize :device_list
end
