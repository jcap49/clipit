class Clip < ActiveRecord::Base

  # Attrs
  attr_accessible :title, :body, :photo
  has_attached_file :photo

  # Validations
  validates :title, presence: true, length: {maximum: 250}
  validates :body, presence: true, length: {maximum: 1000}
  validates :photo, presence: true


end
