class BigCategory < ActiveRecord::Base
  has_many :middle_categorys
  def self.default_new
    BigCategory.create([{:name => "服饰鞋包"},{:name => "礼品首饰"},{:name => "美容美发"}])
  end
end
