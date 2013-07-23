class Attachment < ActiveRecord::Base
 belongs_to :product  ,:foreign_key=> :product_id
 require 'uuidtools'
 
#   #用户上传头像
#    def self.upload_user(file,id)
#    file_name = UUID.random_create.to_s + File.extname(file.original_filename)
#    file_path = "#{RAILS_ROOT}/public/upload_images/temp_image/"
#    real_path = file_path + file_name
#    FileUtils.mkdir_p(file_path) unless File.exist?(file_path)
#    # delete it first if picture exist
#    File.delete(real_path) if File.exist?(real_path)
#     user_attachment = Attachment.new()
#     user_attachment.trace = file_name
#     user_attachment.user_id = id
#     user_attachment.save
#    File.open(file_path + file_name, "wb" ) do |f|
#      f.write(file.read)
#    end
#    return file_name
#
#  end
  # 图片预览 
  #【引数】file上传的图片，type类名，id
  #【返値】
  #【注意】 type
  def self.image_preview(file)
    file_name = UUID.random_create.to_s + File.extname(file.original_filename)
    file_path = "#{RAILS_ROOT}/public/upload_images/temp_image/"
    real_path = file_path + file_name
    FileUtils.mkdir_p(file_path) unless File.exist?(file_path)
    # delete it first if picture exist
    File.delete(real_path) if File.exist?(real_path)
    
    File.open(file_path + file_name, "wb" ) do |f|
      f.write(file.read)
    end
    return file_name

  end
 
  # 获得图片的url
  #【引数】 图片名
  #【返値】图片的url
  #【注意】  
  def self.get_image(name)
    "/upload_images/temp_image/#{name}"
  end
end
