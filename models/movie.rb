class Movie

  attr_reader :id, :title, :genre
  attr_accessor :rating

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @genre = options["genre"]
    @rating = options["rating"].to_i
  end

end
