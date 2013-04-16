class Clip < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => :slugged

  # Attrs
  attr_accessible :title, :body, :photo, :slug
  has_attached_file :photo

  # Validations
  validates :title, presence: true, length: {maximum: 250}
  validates :body, presence: true, length: {maximum: 1000}
  validates :photo, presence: true
  validates :slug, presence: true

end
