class CreateSmallCategories < ActiveRecord::Migration
  def self.up
    create_table :small_categories do |t|
      t.string :name
      t.integer :middle_category_id
      t.timestamps
    end
    SmallCategory.default_new
  end

  def self.down
    drop_table :small_categories
  end
end
