class User < ActiveRecord::Base
  has_many :barks

  def self.authenticate(user_info)
    find_by_name_and_password(user_info[:name], user_info[:password])
  end

end
