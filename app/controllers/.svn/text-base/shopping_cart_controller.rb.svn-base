class ShoppingCartController < BaseController
  
  #显示购物车
  def cart
    @big_category = BigCategory.all
    @cart = session[:cart]
    pp "cartlast--------------",@cart.to_s
  end
  
  #加入购物车
   def add_to_cart
       product = Product.find(params[:id])
       @cart = find_cart
       @cart.add_product(product)
       @cart = ShoppingCart.new
       render :js => "alert('成功加入购物车')"
  end

  
  
  #购买商品
  def buy
    
  end
  
  #删除商品
  def delete
    product = Product.find(params[:id])
        pp "ddddddddd",product
    if product == nil
      flash[:notice] = "不存在要删除的商品"
      return redirect_to :action => :cart
    end
    @cart = session[:cart]
    pp "...............",@cart.to_s
    if @cart != nil
      @cart.move_it(product)
    end
    redirect_to :action => :cart
  end
  
  #更改数量
  def update_quantity
    product = Product.find(params[:id])
    @cart = find_cart
    if params[:quantity].strip =~ /^[1-9]+[0-9]*$/
     @cart.update_quantity(product,params[:quantity].strip)
    else
     flash["quantity_'#{product.id}'"] = "输入错误"
    end
    redirect_to :action => 'cart'
  end
  
  #清空购物车
  def empty_cart
    session[:cart] = nil
    flash[:notice] = "Your cart is currently empty"
    redirect_to :action => 'cart'
  end
  
  #将购物车存入session，有就不用存了
  private
  def find_cart
    session[:cart] ||= ShoppingCart.new
  end
end
