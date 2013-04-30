class StaticPagesController < ApplicationController
  def home
    @clip = Clip.limit(1).offset(rand(Clip.count)).first
    @video = yt_client.videos_by(:query => @clip.song, :max_results => "1", :format => "5", :autoplay => "1")

    @html_for_video = @video.videos
    @e_video = @html_for_video.collect {|video| video.embed_html5(:url_params => {:autoplay => "1"})}
  end

  def why
  end
end
