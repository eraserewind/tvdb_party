module TvdbParty
  class Banner
    attr_accessor :id, :banner_type, :banner_type2, :season, :path, :thumbnail_path, :language, :rating,
    :rating_count, :series_name, :colors
    
    def initialize(options={})
      @id = options["id"]
      @banner_type = options["BannerType"]
      @banner_type2 = options["BannerType2"]
      @season = options["Season"]
      @path = options["BannerPath"]
      @language = options["Language"]
      @rating_count = options["RatingCount"] || 0
      @series_name = options["SeriesName"]
      @colors = options["Colors"]
      
      if options["Rating"] && options["Rating"].size > 0
        @rating = options["Rating"].to_f
      else
        @rating = 0
      end
    end
    
    def url
      "http://thetvdb.com/banners/" + @path
    end

    def thumb_url
      "http://thetvdb.com/banners/_cache/" + @path
    end

  end
end