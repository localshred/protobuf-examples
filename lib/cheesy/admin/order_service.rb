require 'protobuf/rpc/service'
require 'cheesy/admin/order.pb'

##	!! DO NOT EDIT THIS FILE !!
## 
##	To implement this service as defined by the protobuf, simply
##	reopen Cheesy::Admin::OrderService and implement each service method:
## 
## module Cheesy
## 	module Admin
## 		class OrderService
## 		
## 			# request -> Cheesy::Admin::Order
## 			# response -> Cheesy::Admin::Order
## 			def purchase
## 				# TODO: implement purchase
## 			end
## 		
## 		end
## 	end
## end
##

module Cheesy
	module Admin
		class OrderService < Protobuf::Rpc::Service
		  rpc :purchase, Order, Order
		end
	end
end
