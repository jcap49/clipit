class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :yt_client

  private

  def yt_client
    @yt_client ||= YouTubeIt::Client.new(:dev_key => "AI39si4ha6qICXurMV41Wt1W853x5Xf4MaFI5ZYCW2pF5oX8Dg4sqiLB8_Tb7w_FhK5XyngLRgqdNTfHXmVqhqKmCUSkTgcDNg")
  end
end
