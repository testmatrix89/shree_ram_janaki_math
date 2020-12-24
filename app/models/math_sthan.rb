class MathSthan < ApplicationRecord
  mount_uploaders :sthan_image, AvatarUploader
  after_commit :remove_previously_stored_sthan_image, on: :update
end
