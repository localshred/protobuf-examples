### Generated by rprotoc. DO NOT EDIT!
require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/service'
require 'protobuf/message/extend'

module Cheesy
  module Admin
    class ProductType < ::Protobuf::Enum
      define :CHEDDAR, 0
      define :JACK, 1
      define :GOUDA, 2
      define :MOZARELLA, 3
    end
    class Product < ::Protobuf::Message
      required :string, :guid, 1
      required :string, :sku, 2
      required :double, :cost, 3
      required :float, :markup, 4, :default => 0.25
      required :double, :retail_price, 5
      required :ProductType, :type, 6
      optional :bool, :in_stock, 7, :default => true
    end
    class ProductList < ::Protobuf::Message
      repeated :Product, :products, 1
    end
    class ProductFindRequest < ::Protobuf::Message
      required :ProductType, :type, 1
    end
  end
end