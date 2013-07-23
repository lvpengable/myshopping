class AddColumnsToProducts < ActiveRecord::Migration
  def self.up
    add_column :products,:order_id,:integer
    add_column :products,:shopping_cart_id,:integer
    add_column :products,:product_pic,:string
  end

  def self.down
    remove_column :products,:order_id
    remove_column :products,:shopping_cart_id
    remove_column :products,:product_pic
  end
end
