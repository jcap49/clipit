class Clip < ActiveRecord::Base
  extend FriendlyId
  friendly_id :unique_url , :use => :slugged

  # Attrs
  attr_accessible :title, :body, :photo, :slug, :unique_url
  has_attached_file :photo

  # Validations
  validates :title, presence: true, length: {maximum: 250}
  validates :body, presence: true, length: {maximum: 1000}
  validates :photo, presence: true
  validates :slug, presence: true
  validates :unique_url, presence: true, length: {maximum: 100}

  # if unique_url form field is blank


end
