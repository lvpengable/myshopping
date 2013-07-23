class CreateMiddleCategories < ActiveRecord::Migration
  def self.up
    create_table :middle_categories do |t|
      t.string :name
      t.integer :big_category_id
      t.timestamps
    end
    MiddleCategory.default_new
  end

  def self.down
    drop_table :middle_categories
  end
end
