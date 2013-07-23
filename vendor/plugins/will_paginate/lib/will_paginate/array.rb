require 'will_paginate/collection'

# http://www.desimcadam.com/archives/8
Array.class_eval do
    
  def paginate(options = {})
    raise ArgumentError, "parameter hash expected (got #{options.inspect})" unless Hash === options
    
    WillPaginate::Collection.create(
        options[:page] || 1,
        options[:per_page] || 30,
        options[:total_entries] || self.length
    ) { |pager|
       #Add wll 20100604
      offset = pager.offset > 999999999 ? 999999999 : pager.offset #如果数组下标大于999999999则会报错bignum too big to convert into `long'
      pager.replace self[offset, pager.per_page].to_a
#      pager.replace self[pager.offset, pager.per_page].to_a
    }
  end
end
