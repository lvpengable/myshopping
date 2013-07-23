class Product < ActiveRecord::Base
  has_many :product_items
  has_many :orders , :through => :product_items
  def self.default_new
    Product.create([{:name => "衬衫1",:description => "亲，很好用的哦",:product_pic => "pic_1.jpg",:dang_price => 123.6,:small_category_id => 1},
    {:name => "衬衫2",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 101.2,:small_category_id => 1},
    {:name => "衬衫3",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 103.2,:small_category_id => 1},
    {:name => "衬衫4",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 104.2,:small_category_id => 1},
    {:name => "衬衫5",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 105.3,:small_category_id => 1},
    {:name => "T恤1",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 100.32,:small_category_id => 2},
    {:name => "T恤2",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 2},
    {:name => "T恤3",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 2},
    {:name => "针织1",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 3},
    {:name => "针织2",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 3},
    {:name => "戒指1",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 23},
    {:name => "戒指2",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 23},
    {:name => "戒指3",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 23},
    {:name => "戒指4",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 23},
    {:name => "戒指5",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 23},
    {:name => "戒指6",:description => "亲，很好用的哦",:fixed_price => 123.6,:product_pic => "pic_1.jpg",:dang_price => 95.6,:small_category_id => 23}])
  end
end
