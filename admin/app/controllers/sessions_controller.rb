require 'cheesy/users/auth_service'

class SessionsController < ApplicationController
  
  def new
  end

  def create
    request = Cheesy::Users::AuthRequest.new
    request.email = params[:email]
    request.hashed_password = params[:password]
    
    login_user = nil
    login_error = nil
    
    begin
      Cheesy::Users::AuthService.client(timeout: 2, async: false).authenticate(request) do |c|
        c.on_success do |user|
          login_user = user
        end
        c.on_failure do |error|
          login_error = error
        end
      end
    rescue
      login_error = Protobuf::Rpc::ClientError.new 'RPC_ERROR', $!.message
    end
    
    if login_error.nil?
      flash[:notice] = 'Login successful!'
      redirect_to products_path
    else
      flash[:error] = 'Login failed! %s (%s)' % [login_error.message, login_error.code]
      redirect_to new_sessions_path
    end
  end

  def destroy
    redirect_to new_session_path
  end

end
