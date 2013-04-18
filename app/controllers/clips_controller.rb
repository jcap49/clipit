class ClipsController < ApplicationController

  def index
  end

  def show
    @clip = Clip.find(params[:id])

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
    @clip = Clip.new(params[:clip])

    # TO-DO: fix this stupid fucking youtube api bullshit
    @videos = yt_client.videos_by(:query => :song, :per_page => "2")

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
end
