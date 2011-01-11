### Generated by rprotoc. DO NOT EDIT!
require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/service'
require 'protobuf/message/extend'

module Cheesy
  module Users
    require 'cheesy/util.pb'
    class User < ::Protobuf::Message
      required :string, :guid, 1
      required :string, :email, 2
      optional :string, :name, 3
      optional :StatusType, :status, 4, :default => :PENDING
    end
    class UserList < ::Protobuf::Message
      repeated :User, :users, 1
    end
    class UserFindRequest < ::Protobuf::Message
      optional :string, :name, 1
      optional :string, :email, 2
    end
  end
end