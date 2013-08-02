class ProductController < BaseController
  
  #显示默认商品以及分类
  def index
    @big_category = BigCategory.all
    @product = Product.find(:all ,:order => "created_at",:limit => 3)
	pp "ddddd"
  end
  
  #显示所有商品
  def show_all
    @will_paginate = "yes"
    @big_category = BigCategory.all
    @product = Product.paginate :page => params[:page], :per_page => 5
    render :action => 'index'
  end
  
  #显示中分类
  def show_middle_category
    @big_category_id = params[:big_category_id]
    @big_category = BigCategory.all
    @middle = BigCategory.find_by_id(params[:big_category_id]).middle_categorys
    if params[:type].blank?
      render :update do |page|
        text = render :partial => 'show_middle_category'
        page.replace_html 'show_big_category',text
      end
    else
      render :update do |page|
        text = render :partial => 'show_big_category'
        page.replace_html 'show_big_category',text
      end
    end
  end
  
  #显示小分类
  def show_small_category
    middle = MiddleCategory.find_by_id(params[:middle_category_id]) #根据id找到middle对象
    big_category_id = middle.big_category_id #取出middle对象中的大分类id
    @middle = BigCategory.find_by_id(big_category_id).middle_categorys #找到这个大分类下的所有middle
    @small = middle.small_categorys#找到此中分类的所有小分类
    @middle_category_id = params[:middle_category_id]
    if params[:type].blank?
      render :update do |page|
        text = render :partial => 'show_middle_small_category'
        page.replace_html 'show_middle_category',text
      end
    else
      render :update do |page|
        text = render :partial => 'show_no_small_category'
        page.replace_html 'show_middle_category',text
      end
    end
  end
  
  #显示所需的商品
  def show_products
    @big_category = BigCategory.all
    @product = Product.paginate(:all , :page => params[:page], :per_page => 5,:conditions => ["small_category_id = ?",params[:id]])
    render :action => 'index'
  end
  
  #显示详细信息
  def product_detail
    @big_category = BigCategory.all
    @p = Product.find_by_id(params[:id])
    @product = Product.find(:all , :conditions => ["small_category_id=?",@p.small_category_id])
    if @p == nil
      render :text => "不存在此物品"
    end
  end
  
  #根据商品名字搜索商品
  def search_products
    @will_paginate = "yes"
    @big_category = BigCategory.all
    @product = Product.paginate(:all ,:page => params[:page], :per_page => 10, :conditions => ["name like ? or description like ? " , "%#{params[:query]}%","%#{params[:query]}%"])
    render :action => 'index'
  end
end
