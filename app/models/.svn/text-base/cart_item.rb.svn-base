class CartItem #< ActiveRecord::Base
  attr_accessor :product,:quantity
  
  #初始化对象，默认quantity为1
  def initialize(product)
    @product = product
    @quantity = 1
  end
  
  #增加数量
  def increment_quantity
    @quantity += 1
  end
  
  #商品名字
  def title
    @product.name
  end
  
  #商品总价
  def price
    @product.dang_price * @quantity
  end
end
