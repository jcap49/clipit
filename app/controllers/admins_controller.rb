class AdminsController < ApplicationController
  include Devise::Controllers::Helpers

  def dashboard
    @users = User.all
  end

end
