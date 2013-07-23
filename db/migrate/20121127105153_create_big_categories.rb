class CreateBigCategories < ActiveRecord::Migration
  def self.up
    create_table :big_categories do |t|
      t.string :name
      t.timestamps
    end
    BigCategory.default_new
  end

  def self.down
    drop_table :big_categories
  end
end
