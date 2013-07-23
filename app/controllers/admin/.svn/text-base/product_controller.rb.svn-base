require 'pp'
class Admin::ProductController < Admin::BaseController
  #获取数据库中所有的商品
  def list
    pp 'ddddddddddd',APP_CONFIG[:per_page]
    @products=Product.paginate :page => params[:page], :per_page => APP_CONFIG[:per_page] 
    
  end
  
  #接收list页面的添加商品的请求，并渲染product_add模板
  def to_add
    @big_categorys = BigCategory.find(:all).collect {|p| [p.name,p.id]}
    pp "|||||||||||||||||||||||",@big_categorys
    render :action=>:product_add
  end
  
  #添加商品
  def product_add
    pp ">>>>>>>>>>>>",params[:product]
    pp '<<<<<<<<<<<<<<<<',params[:small_category_id]
    product = Product.new(params[:product]) 
    product.small_category_id=params[:small_category_id]
    product.save
    ProductImage.upload(params[:attachment][:image],product.id)
    redirect_to :action =>:list
  end
  
     #接收list页面传来的编辑商品的请求，并渲染product_update模板
  def to_update
    @product = Product.find_by_id(params[:id])
    @attachment=ProductImage.find(:first,:conditions => ["own_id=?",params[:id]])
    @big_categorys = BigCategory.find(:all).collect {|p| [p.name,p.id]}
    render :action => :product_update
  end
  
   #编辑商品
   def product_update
    product = Product.find_by_id(params[:product][:id])
    product.update_attributes(params[:product])
    product.small_category_id=params[:small_category_id]
    product.save
    ProductImage.upload(params[:attachment][:image],product.id)
    redirect_to :action => :list
 end
 
    #删除商品
  def product_delete
     product= Product.find_by_id(params[:id])
     pp "<<<<<<<<<<<<",product,params[:id]
     product.destroy
     redirect_to :action => :list
 
end
    
    #接收list页面传来的查看商品详细的请求，并渲染product_detail模板
    def to_detail
      @product= Product.find_by_id(params[:id])
      @attachment=ProductImage.find(:first,:conditions => ["own_id=?",params[:id]])
      pp "$$$$$$$$$$$$$$$$$$$$$$$$", @attachment
#     pp "+++++++++-------------",@product.small_category_id
     @small_category=SmallCategory.find_by_id(@product.small_category_id)
       pp "***************", @small_category
      render :action => :product_detail
  end
  
   #根据大分类的big_category_id来查找中分类middle_category
   def get_middle
        pp "------------------",params
#     params[:big_category_id]
    big_category=BigCategory.find_by_id(params[:big_category_id])
    @middle_categorys=big_category.middle_categorys
    
    @name = @middle_categorys.collect{|m| [m.name, m.id]}
    
    
    pp "++++++++++++++++++",@middle_categorys
    if  request.xml_http_request?   # 判断是否为ajax请求
      render :update do |page|
        middle_category  =   render  :partial => 'middle_category' # 加载模板页
        page.replace_html "m_id",  middle_category # 替换页面中某块的内容
      end
    end
  end
  #根据中分类的middle_category_id来查找小分类small_category
  def get_small
    pp "===================",params
    middle_category=MiddleCategory.find_by_id(params[:middle_category_id])
    small_categorys=middle_category.small_categorys
    @name = small_categorys.collect{|m| [m.name, m.id]} 
    if  request.xml_http_request?   # 判断是否为ajax请求
      render :update do |page|
        small_category  =   render  :partial => 'small_category' # 加载模板页
        page.replace_html "s_id",  small_category # 替换页面中某块的内容
      end
  end
end
   #上传商品图片时的图片预览
   def image_preview
    @image_name = Attachment.image_preview(params[:attachment][:image]) 
    pp ">>>>>>>>>>>>",@image_name
    responds_to_parent do
      render :update do |page|
        text = render :partial => 'image_preview'
        page.replace_html 'image_preview', text
      end
    end 
  end



end