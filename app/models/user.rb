class User < ActiveRecord::Base
  has_many :computers

  def online?
    computers.any? { |c| c.online }
  end
end
