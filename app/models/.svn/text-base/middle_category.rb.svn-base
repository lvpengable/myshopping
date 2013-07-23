class MiddleCategory < ActiveRecord::Base
  has_many :small_categorys
  belongs_to :big_category
  def self.default_new
    MiddleCategory.create([{:name => "品牌女装",:big_category_id => 1},{:name => "时尚男装",:big_category_id => 1},
                        {:name => "运动休闲 ",:big_category_id => 1},{:name => "精致内衣",:big_category_id => 1},
                        {:name => "钟表",:big_category_id => 2},{:name => "水晶首饰",:big_category_id => 2},
                        {:name => "钻石首饰",:big_category_id => 2},{:name => "翡翠首饰",:big_category_id => 2},
                        {:name => "面部护理",:big_category_id => 3},{:name => "身体护理",:big_category_id => 3},
                        {:name => "女性护理",:big_category_id => 3},{:name => "男士护理",:big_category_id => 3}])
  end
                        
end
