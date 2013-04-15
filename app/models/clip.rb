class Clip < ActiveRecord::Base
  attr_accessible :title, :body, :song
  has_many :photos

end
