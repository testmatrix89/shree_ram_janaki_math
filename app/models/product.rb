class Product < ApplicationRecord
  mount_uploaders :avatars, AvatarUploader
  has_many :order_items
end
