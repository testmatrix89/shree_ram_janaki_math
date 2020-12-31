class AlbumsController < ApplicationController
  def index
    images_dir = Dir.glob("app/assets/images/*.jpg")
    images_dir = images_dir.map{|img| img = img.split('/').last }
    images_dir = images_dir.reject{|item| ["suvichar-bg.jpg", "tropical_flowers.jpg", "footer-bg.jpg"].include?(item)}
    gallery_dir = Dir.glob("app/assets/images/gallery/*")
    gallery_dir = gallery_dir.map{|img| img = "gallery/#{img.split('/').last}" }
    @images = gallery_dir.concat(images_dir)
  end
end
