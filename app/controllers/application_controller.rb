class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :yt_client

  private

  def yt_client
    #@client = YouTubeIt::Client.new (:dev_key => YouTubeITConfig.dev_key)
  end
end
