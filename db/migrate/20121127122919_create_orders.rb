class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :user_id 
      t.float :order_price 
      t.string :full_address  
      t.string :receive_name  
      t.string :phone
      t.string :postal_code 
      t.integer :status  
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
