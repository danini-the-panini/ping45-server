class User < ActiveRecord::Base
  has_many :computers
end
