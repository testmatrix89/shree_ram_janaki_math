class Program < ApplicationRecord
  extend FriendlyId
  friendly_id :program_name, use: :slugged

  def normalize_friendly_id(string)
    string.gsub(' ', '-')
  end
end
