class AdminsController < ApplicationController
  include Devise::Controllers::Helpers

  def index
    @users = User.all
  end

end
