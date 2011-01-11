require 'cheesy/users/user.pb'

class User < ActiveRecord::Base
  
  before_create do
    self.guid = Guid.new
    self.status = Cheesy::StatusType::PENDING if status.nil?
  end
  
  def to_proto
    Cheesy::Users::User.new.tap do |u|
      u.guid = guid
      u.email = email
      u.name = name
      u.status = status
    end
  end
  
end
