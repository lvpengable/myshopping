class BaseController < ApplicationController
  layout 'head' , :except => ["login","signup"]
  #layout 'head2' , :only => ["index","product_detail","cart"]
  include UserAuthenticatedSystem
  before_filter :valid_current ,:only => ["add_order"]
  
  def valid_current
    if session[:user].present? 
    else
      redirect_to :controller => "/users", :action => "login"
    end
  end
end