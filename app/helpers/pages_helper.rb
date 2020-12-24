module PagesHelper
  def math_sthan_iamge_load(sthan_image_path, uploaded = false)
    return "small-temple.jpg" unless sthan_image_path.present?
    if uploaded
      File.exist?(sthan_image_path.first.path.to_s) ? sthan_image_path.first.url.to_s : "small-temple.jpg"
    else
      sthan_image_path.present? ? sthan_image_path.to_s : "small-temple.jpg"
    end
  end
end
