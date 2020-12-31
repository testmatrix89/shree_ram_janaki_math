class Sanskrity < ApplicationRecord
  extend FriendlyId

  mount_uploaders :image, AvatarUploader
  after_commit :remove_previously_stored_image, on: :update

  friendly_id :title, use: :slugged

  def normalize_friendly_id(string)
    string.gsub(' ', '-')
  end
end
