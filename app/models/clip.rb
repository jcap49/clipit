class Clip < ActiveRecord::Base
  attr_accessible :title, :body, :photo
  has_attached_file :photo
end
