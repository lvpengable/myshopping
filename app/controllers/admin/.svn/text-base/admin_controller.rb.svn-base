class Admin::AdminController < Admin::BaseController
  # Be sure to include AuthenticationSystem in Application Controller instead
    
  # If you want "remember me" functionality, add this before_filter to Application Controller
  before_filter :login_from_cookie

  # say something nice, you goof!  something sweet.
  def index
    redirect_to(:action => 'signup') unless logged_in? || Admin.count > 0
  end

  def login
    return unless request.post?
    self.current_admin = Admin.authenticate(params[:login], params[:password])
    if logged_in?
      if params[:remember_me] == "1"
        self.current_admin.remember_me
        cookies[:auth_token] = { :value => self.current_admin.remember_token , :expires => self.current_admin.remember_token_expires_at }
      end
      redirect_back_or_default(:controller => '/admin/product', :action => 'list')
      flash[:notice] = "Logged in successfully"
    end
  end

  def signup
    @admin = Admin.new(params[:admin])
    return unless request.post?
    @admin.save!
    self.current_admin = @admin
    redirect_back_or_default(:controller => '/admin/admin', :action => 'login')
    flash[:notice] = "Thanks for signing up!"
  rescue ActiveRecord::RecordInvalid
    render :action => 'signup'
  end
  
  def logout
    self.current_admin.forget_me if logged_in?
    cookies.delete :auth_token
    reset_session
    flash[:notice] = "You have been logged out."
    redirect_back_or_default(:controller => '/admin/admin', :action => 'login')
  end
end
