class Clip < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title , :use => :slugged

  belongs_to :user


  # Attrs
  attr_accessible :user_id, :title, :body, :photo, :slug, :unique_url, :song, :song_id
  has_attached_file :photo, :styles => {
    :small => "160x160>",
    :large => "525x525>"}

  # Validations
  validates :title, presence: true, length: {maximum: 250}
  validates :body, presence: true, length: {maximum: 1000}

  #TO-DO: add presence validator back to photo before pushing live

  validates :slug, presence: true
  validates :song, presence: true

  # TO-DO: add a song attr & migration
end
