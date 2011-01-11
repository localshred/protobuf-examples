require 'protobuf/rpc/service'
require 'cheesy/users/authentication.pb'

##	!! DO NOT EDIT THIS FILE !!
## 
##	To implement this service as defined by the protobuf, simply
##	reopen Cheesy::Users::AuthService and implement each service method:
## 
## module Cheesy
## 	module Users
## 		class AuthService
## 		
## 			# request -> Cheesy::Users::AuthRequest
## 			# response -> Cheesy::Users::User
## 			def authenticate
## 				# TODO: implement authenticate
## 			end
## 		
## 		end
## 	end
## end
##

module Cheesy
	module Users
		class AuthService < Protobuf::Rpc::Service
		  rpc :authenticate, AuthRequest, User
		end
	end
end
