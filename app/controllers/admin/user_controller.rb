class Admin::UserController < Admin::BaseController
  
  #获取用户表中的详细用户
  def list
    
    @users=User.paginate :page => params[:page], :per_page => APP_CONFIG[:per_page]
    pp "%%%%%%%%%%%%%%%%%%",@users
  end
  #接收list的创建用户的请求,并渲染user_add模板
  def to_add
    render :action => :user_add
  end
  #创建用户
  def user_add
    user = User.new
    user.login=params[:user][:login]
    user.email=params[:user][:email]
    user.crypted_password= user.encrypt(params[:user][:password])
    user.save
    redirect_to :action => :list
  end
  #查看用户详细
  def detail
    @user=User.find_by_id(params[:id])
    render :action=> :user_detail
  end
  #接收list传来的编辑用户的请求，并渲染user_update模板
  def to_update
    @user = User.find_by_id(params[:id])
    render :action => :user_update
  end
  #对用户进行编辑
  def user_update
    user = User.find_by_id(params[:user][:id])
    #    pp "^^^^^^^^^^^^^^^^",params[:user],User.encrypt(params[:user][:password])
    #    user.update_attributes(params[:user])
    #    pp "^^^^^^^^^^^^^^^^^^^^^^^^^", params[:user][:password],User.encrypt(params[:user][:password])
    user.login=params[:user][:login]
    user.email=params[:user][:email]
    user.crypted_password= user.encrypt(params[:user][:password])
    pp '^^^^^^^^^^^^^^^^^^^^^^',user.encrypt(params[:user][:password])
    user.save
    redirect_to :action => :list
  end
  #删除用户操作
  def delete
    user= User.find_by_id(params[:id])
    user.destroy
    redirect_to :action => :list
  end
end