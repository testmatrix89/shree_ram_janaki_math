class Suvichar < ApplicationRecord
  # extend FriendlyId

  mount_uploaders :suvichar_image, AvatarUploader
  after_commit :remove_previously_stored_suvichar_image, on: :update

  # friendly_id :suvichar_title, use: :slugged

  # def normalize_friendly_id(string)
  #   string.gsub(' ', '-')
  # end
end
