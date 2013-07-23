class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.string :description
      t.float :fixed_price
      t.float :dang_price
      t.integer :small_category_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
