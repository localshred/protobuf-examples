require File.expand_path('../config/environment', File.dirname(__FILE__))
require 'protobuf/rpc/server'

$:.push File.expand_path('../', File.dirname(__FILE__))
require 'app/services/auth_service'

EM::run {
  EM::start_server('localhost', 9939, Protobuf::Rpc::Server)
  puts '[INFO] Protobuf server started at localhost:9939'
  EM.add_periodic_timer(5){ print '.'}
}
