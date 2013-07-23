class ProductImage  <  Attachment
  
   #上传商品图片
   def self.upload(file,id)
    file_name = UUID.random_create.to_s + File.extname(file.original_filename)
    file_path = "#{RAILS_ROOT}/public/upload_images/temp_image/"
    real_path = file_path + file_name
    FileUtils.mkdir_p(file_path) unless File.exist?(file_path)
    # delete it first if picture exist
    File.delete(real_path) if File.exist?(real_path)
       product_image  =  ProductImage.new()
       product_image.file_name=file_name
       product_image.own_id=id
       product_image.save
#     article_attachment = Attachment.new()
#     article_attachment.trace = file_name
#     article_attachment.article_id = id
#     article_attachment.save
    File.open(file_path + file_name, "wb" ) do |f|
      f.write(file.read)
    end
    return file_name

end
  end
