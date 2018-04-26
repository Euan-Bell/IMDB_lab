class Casting

  attr_reader :id
  attr_accessor :movie_id, :star_id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @star_id = options["star_id"].to_i
    @movie_id = options["movie_id"].to_i
  end

end
