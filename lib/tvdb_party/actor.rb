module TvdbParty
  class Actor
    attr_accessor :id, :name, :role, :image, :sort_order

    def initialize(options={})
      @id = options["id"]
      @name = options["Name"]
      @role = options["Role"]
      @image = options["Image"]
      @sort_order = options["SortOrder"]
    end
    
    def image_url
      return nil unless @image
      "http://thetvdb.com/banners/" + @image
    end
    
  end
end
