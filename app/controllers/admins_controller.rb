class AdminsController < ApplicationController
  include Devise::Controllers::Helpers

  def dashboard
    @users = User.all
    @clips = Clip.all
  end

end
