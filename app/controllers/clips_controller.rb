class ClipsController < ApplicationController
  #before_filter :authenticate_user!, only: [:edit, :index, :destroy]

  def index
   @clips = current_user.clips
  end

  def show
    @clip = Clip.find(params[:id])
    @video = yt_client.videos_by(:query => @clip.song, :max_results => "1", :format => "5")
    @html_for_video = @video.videos
    @e_video = @html_for_video.collect! {|video| video.embed_html5}

    respond_to do |format|
      format.html
      format.json { render json: @clip }
    end
  end

  def new
    @clip = Clip.new

    respond_to do |format|
      format.html
      format.json { render json: @clip }
    end
  end

  def edit
    @clip = Clip.find(params[:id])
  end

  def create
    @clip = Clip.new(params[:clip]) || current_user.clips.build(params[:clip])

    respond_to do |format|
      if @clip.save
        format.html { redirect_to @clip, notice: 'Clip was successfully created.' }
        format.json { render json: @clip, status: :created, location: @clip }
      else
        format.html { render action: "new" }
        format.json { render json: @clip.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @clip = Clip.find(params[:id])

    respond_to do |format|
      if @clip.update_attributes(params[:clip])
        format.html { redirect_to @clip, notice: 'Clip was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clip.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @clip = Clip.find(params[:id])
    @clip.destroy

    respond_to do |format|
      format.html { redirect_to clips_url }
      format.json { head :no_content }
    end
  end

  def example
    @clip = Clip.all
  end

  def video_results
    @videos = yt_client.videos_by(:query => params[:term], :max_results => "1", :format => "5")
    display_video_results
  end

  #TO-DO add save feature for song
  #implement appropriate embed view for clips/show
  def display_video_results
   @results = @videos.videos
   @results.collect! {|video| video.title}

   render :json => @results
  end
end
