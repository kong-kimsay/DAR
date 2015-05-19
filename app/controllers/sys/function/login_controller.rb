class Sys::Function::LoginController < ApplicationController
  layout false
  def index
    render 'sys/function/login/index'
  end

end
