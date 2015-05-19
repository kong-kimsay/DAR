class Sys::Function::LockController < ApplicationController
  layout 'lock'
  skip_before_filter :authenticate_user!, :only => :new

  def new
    if not params[:user].nil? || params[:id].nil?
        @username = params[:user]
        @employee = Hr::Function::Employee.find(params[:id])
    end
    if @username.nil?
      redirect_to root_url
    else
      signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    end
  end
end
