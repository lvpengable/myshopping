class SmallCategory < ActiveRecord::Base
  belongs_to :middle_category
  def self.default_new
    SmallCategory.create([{:name => "衬衫",:middle_category_id => 1},{:name => "T恤",:middle_category_id => 1},
                        {:name => "针织 ",:middle_category_id => 1},{:name => "外套",:middle_category_id => 1},
                        {:name => "裙子",:middle_category_id => 1},{:name => "衬衫",:middle_category_id => 2},
                        {:name => "T恤",:middle_category_id => 2},{:name => "针织",:middle_category_id => 2},
                        {:name => "外套",:middle_category_id => 2},{:name => "运动装",:middle_category_id => 3},
                        {:name => "运动鞋",:middle_category_id => 3},{:name => "运动配件",:middle_category_id => 3},
                        {:name => "文胸",:middle_category_id => 4},{:name => "睡衣",:middle_category_id => 4},
                        {:name => "家居服",:middle_category_id => 4},{:name => "保暖内衣",:middle_category_id => 4},
                        {:name => "袜子",:middle_category_id => 4},{:name => "内裤",:middle_category_id => 4},
                        {:name => "男表",:middle_category_id => 5},{:name => "女表",:middle_category_id => 5},
                        {:name => "情侣表",:middle_category_id => 5},{:name => "儿童手表",:middle_category_id => 5},
                        {:name => "戒指",:middle_category_id => 6},{:name => "项链",:middle_category_id => 6},
                        {:name => "耳环",:middle_category_id => 6},{:name => "手链",:middle_category_id => 6},
                        {:name => "钻戒",:middle_category_id => 7},{:name => "项链",:middle_category_id => 7},
                        {:name => "耳环",:middle_category_id => 7},{:name => "手链",:middle_category_id => 7},
                        {:name => "挂件",:middle_category_id => 8},{:name => "手镯",:middle_category_id => 8},
                        {:name => "戒指",:middle_category_id => 8},{:name => "耳钉",:middle_category_id => 8},
                        {:name => "洁面乳",:middle_category_id => 9},{:name => "爽肤水",:middle_category_id => 9},
                        {:name => "乳液面霜",:middle_category_id => 9},{:name => "面膜",:middle_category_id => 9},
                        {:name => "洗发",:middle_category_id => 10},{:name => "护发",:middle_category_id => 10},
                        {:name => "造型",:middle_category_id => 10},{:name => "染发",:middle_category_id => 10},
                        {:name => "卫生巾",:middle_category_id => 11},{:name => "卫生护垫",:middle_category_id => 11},
                        {:name => "洗液",:middle_category_id => 11},{:name => "湿巾",:middle_category_id => 11},
                        {:name => "男士洁面",:middle_category_id => 12},{:name => "男士护肤",:middle_category_id => 12},
                        {:name => "洗发护发",:middle_category_id => 12},{:name => "男士香水",:middle_category_id => 12}])
  end
end
