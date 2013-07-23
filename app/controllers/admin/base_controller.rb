class Admin::BaseController < ApplicationController
  require 'pp'
  layout 'admin'
#  layout 'category'
  include   AdminAuthenticatedSystem
  before_filter :authen,   :except =>["login","signup"]
  def authen
#    pp '&&&&&&&&&&&&&&',session[:admin]
    if session[:admin].present?
    else
      redirect_to :controller => "/admin/admin", :action => "login"
    end
  end
end