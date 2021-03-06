class Product < ApplicationRecord
  extend FriendlyId

  belongs_to :user

  friendly_id :name, use: :slugged
  acts_as_paranoid

  def should_generate_new_friendly_id?
    slug.blank? || name_changed?
  end
end
