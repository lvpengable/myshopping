class Admin::CategoryController < Admin::BaseController
  #获取商品的所有分类（大分类，中分类，小分类）
  def category_list 
    pp "+++++++++++++++++++"
    #     @big_categorys = BigCategory.all
    if  request.xml_http_request?   # 判断是否为ajax请求
      render :update do |page|
        text  =   render  :partial => 'category_list' # 加载模板页
        pp text
        page.replace_html "category",  text # 替换页面中某块的内容
      end
    end
  end
  
  #接收list页面查看大分类的ajax请求并处理请求
  def big_list
    @big_categorys = BigCategory.all
    pp ')))))))))))))))))))))))',@big_categorys
    if  request.xml_http_request?   # 判断是否为ajax请求
      render :update do |page|
        text  =   render  :partial => 'big_list' # 加载模板页
        page.replace_html "big",  text # 替换页面中某块的内容
      end
    end
  end
  
  #接收list页面查看中分类的ajax请求并处理请求
  def middle_list
    @middle_categorys = MiddleCategory.all
    pp ')))))))))))))))))))))))',@middle_categorys
    if  request.xml_http_request?   # 判断是否为ajax请求
      render :update do |page|
        text  =   render  :partial => 'middle_list' # 加载模板页
        page.replace_html "middle",  text # 替换页面中某块的内容
      end
    end
  end
  
  #接收list页面查看小分类的ajax请求并处理请求
  def small_list
    @small_categorys = SmallCategory.all
    pp ')))))))))))))))))))))))',@small_categorys
    if  request.xml_http_request?   # 判断是否为ajax请求
      render :update do |page|
        text  =   render  :partial => 'small_list' # 加载模板页
        page.replace_html "small",  text # 替换页面中某块的内容
      end
    end
  end
  
  #接收大分类一览页面传来的查看大分类的请求，渲染detail_b页面
  def detail_b
    pp '#######################',params[:id]
    @big_category=BigCategory.find_by_id(params[:id])
    pp @big_category
    render :action => :detail_b
  end
  
  #接收大分类一览页面传来的查看中分类的请求，渲染detail_m页面
  def detail_m
    pp '#######################',params[:id]
    @middle_category=MiddleCategory.find_by_id(params[:id])
    pp @middle_category
    render :action => :detail_m
  end
  
  #接收大分类一览页面传来的查看大分类的请求，渲染detail_b页面
  def detail_s
    pp '#######################',params[:id]
    @small_category=SmallCategory.find_by_id(params[:id])
    pp @small_category
    render :action => :detail_s
  end
  
  #接收大分类一览页面传来的编辑大分类的请求，渲染update_b页面
  def to_update_b
    @big_category=BigCategory.find_by_id(params[:id])
    render :action => :update_b
  end
  
  #对大分类进行编辑
  def update_b
    big_category = BigCategory.find_by_id(params[:big_category][:id])
    big_category.update_attributes(params[:big_category])
    redirect_to :controller =>'/admin/product',:action => :list
  end
  
  #接收中分类一览页面传来的编辑中分类的请求，渲染update_m页面
  def to_update_m
    @middle_category=MiddleCategory.find_by_id(params[:id])
    render :action => :update_m
  end
  
  #对中分类进行编辑
  def update_m
    middle_category = MiddleCategory.find_by_id(params[:middle_category][:id])
    middle_category.update_attributes(params[:middle_category])
    redirect_to :controller =>'/admin/product',:action => :list
  end
  
  #接收小分类一览页面传来的编辑小分类的请求，渲染update_s页面
  def to_update_s
    @small_category=SmallCategory.find_by_id(params[:id])
    render :action => :update_s
  end
  
  #对中分类进行编辑
  def update_s
    small_category = Small.find_by_id(params[:small_category][:id])
    small_category.update_attributes(params[:small_category])
    redirect_to :controller =>'/admin/product',:action => :list
  end
  
  #接收大分类一览页面传来的添加大分类的请求，并渲染add_b
  def to_add_b
    render :action =>:add_b
  end
  
  #添加大分类
  def add_b
    pp '|||||||||||||||||||||||||',params[:big_category]
    big_category = BigCategory.new(params[:big_category]) 
    big_category.save 
    redirect_to :controller =>'/admin/product',:action => :list
  end
  
  #接收中分类一览页面传来的添加中分类的请求，并渲染add_m
  def to_add_m
    render :action =>:add_m
  end
  
  #添加中分类
  def add_m
    pp '|||||||||||||||||||||||||',params[:middle_category]
    middle_category = MiddleCategory.new(params[:middle_category]) 
    middle_category.save  
    redirect_to :controller =>'/admin/product',:action => :list
  end
  
  #接收小分类一览页面传来的添加中分类的请求，并渲染add_s
  def to_add_s
    render :action =>:add_s
  end
  
  #添加小分类
  def add_s
    pp '|||||||||||||||||||||||||',params[:small_category]
    small_category = SmallCategory.new(params[:small_category]) 
    small_category.save  
    redirect_to :controller =>'/admin/product',:action => :list
  end
  
  #接收大分类页面传来的删除分类请求并执行删除操作
  def delete_b
    pp "^^^^^^^^^^^^^^^^^^^^^^^",params[:id]
    big_category= BigCategory.find_by_id(params[:id])
    pp '<<<<<<<<<<<<<<<<<<<<<<',big_category
    big_category.destroy
    redirect_to :controller =>'/admin/product',:action => :list
  end
  
  #接收中分类页面传来的删除分类请求并执行删除操作
  def delete_m
    pp "^^^^^^^^^^^^^^^^^^^^^^^",params[:id]
    middle_category= MiddleCategory.find_by_id(params[:id])
    middle_category.destroy
    redirect_to :controller =>'/admin/product',:action => :list
  end
  
  #接收小分类页面传来的删除分类请求并执行删除操作
  def delete_
    pp "^^^^^^^^^^^^^^^^^^^^^^^",params[:id]
    small_category= SmallCategory.find_by_id(params[:id])
    small_category.destroy
    redirect_to :controller =>'/admin/product',:action => :list
  end
end