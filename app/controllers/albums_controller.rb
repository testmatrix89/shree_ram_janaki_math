class AlbumsController < ApplicationController
  def index
    images_dir = Dir.glob("app/assets/images/*.jpg")
    images_dir = images_dir.map{|img| img = img.split('/').last }
    # gallery_dir = Dir.glob("app/assets/images/gallery/*")
    # gallery_dir = gallery_dir.map{|img| img = "gallery/#{img.split('/').last}" }
    @images = images_dir # gallery_dir.concat(images_dir)
  end
end
