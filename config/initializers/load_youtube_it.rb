require 'ostruct'
raw_config = File.read(::Rails.root.to_s + "/config/youtube_it.yml")
YouTubeItConfig =  OpenStruct.new(YAML.load(raw_config)[Rails.env])
