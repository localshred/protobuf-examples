require 'protobuf/rpc/service'
require 'cheesy/users/user.pb'

##	!! DO NOT EDIT THIS FILE !!
## 
##	To implement this service as defined by the protobuf, simply
##	reopen Cheesy::Users::UserService and implement each service method:
## 
## module Cheesy
## 	module Users
## 		class UserService
## 		
## 			# request -> Cheesy::Users::UserFindRequest
## 			# response -> Cheesy::Users::UserList
## 			def find
## 				# TODO: implement find
## 			end
## 		
## 			# request -> Cheesy::Users::User
## 			# response -> Cheesy::Users::User
## 			def create
## 				# TODO: implement create
## 			end
## 		
## 			# request -> Cheesy::Users::User
## 			# response -> Cheesy::Users::User
## 			def update
## 				# TODO: implement update
## 			end
## 		
## 			# request -> Cheesy::Users::User
## 			# response -> Cheesy::Users::User
## 			def delete
## 				# TODO: implement delete
## 			end
## 		
## 		end
## 	end
## end
##

module Cheesy
	module Users
		class UserService < Protobuf::Rpc::Service
		  rpc :find, UserFindRequest, UserList
		  rpc :create, User, User
		  rpc :update, User, User
		  rpc :delete, User, User
		end
	end
end
