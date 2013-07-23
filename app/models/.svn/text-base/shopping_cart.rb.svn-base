class ShoppingCart# < ActiveRecord::Base
  
 attr_accessor :items
 
  #初始化一个数组
  def initialize
    @items = []
  end
  
  #往购物车里增加商品，若购物车里有这商品就数量加1
  def add_product(product)
   current_item = @items.find{|item| item.product == product}
   if current_item
     current_item.increment_quantity
   else
     @items << CartItem.new(product)
   end
 end
 
 #更新数量
 def update_quantity(product,quantity)
   current_item = @items.find{|item| item.product == product}
   current_item.quantity = quantity.to_i
 end
 
 #移除商品
 def move_it(product)
   pp product
   current_item = @items.find{|item| item.product == product}
   pp "===============items==============",@items.to_s
   pp "===============curren,t============",current_item.to_s
   pp @items.is_a?(Array)
   pp @items.class
   pp current_item.class
   pp @items.first == current_item.to_s
   
   pp @items.blank?
   pp @items.size
   pp "zzzzzzzzzz"
    @items.delete(current_item)
    pp @items.to_s
  # pp "============remove_product=================",remove_product
 #  session[:removed] = remove_product
 end
  
 #计算所有商品的总价
# def all_amount
#   @items.each do |item|
#     item.
#   end
# end
 
end
