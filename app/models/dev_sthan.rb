class DevSthan < ApplicationRecord
  extend FriendlyId
  
  mount_uploaders :sthan_image, AvatarUploader
  after_commit :remove_previously_stored_sthan_image, on: :update

  friendly_id :sthan_name, use: :slugged

  def normalize_friendly_id(string)
    string.gsub(' ', '-')
  end
end
