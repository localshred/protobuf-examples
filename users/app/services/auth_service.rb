require 'cheesy/users/auth_service'

module Cheesy
  module Users
    class AuthService
    
      # request -> Cheesy::Users::AuthRequest
      # response -> Cheesy::Users::User
      def authenticate
        user = ::User.find_by_email_and_password(request.email, request.hashed_password)
        if user.nil?
          rpc_failed 'User not found with email %s' % request.email
        else
          user.update_attribute :last_login, Time.now
          self.response = user.to_proto
        end
      end
    
    end
  end
end
