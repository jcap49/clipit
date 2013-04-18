class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :yt_client

  private

  def yt_client
    @yt_client ||= YouTubeIt::Client.new (:dev_key => YouTubeItConfig.dev_key)
  end
end
