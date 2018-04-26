require_relative("../db/sql_runner")
class Casting

  attr_reader :id
  attr_accessor :movie_id, :star_id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @star_id = options["star_id"].to_i
    @movie_id = options["movie_id"].to_i
  end

  def save()
    sql ="INSERT INTO castings (star_id, movie_id)
    VALUES ($1, $2)
    RETURNING id"
    values = [@star_id, @movie_id]
    casting_hash = SqlRunner.run(sql , values).first
    @id = casting_hash['id'].to_i
  end


end
