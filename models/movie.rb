require_relative("../db/sql_runner.rb")
class Movie

  attr_reader :id, :title, :genre
  attr_accessor :rating

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @genre = options["genre"]
    @rating = options["rating"].to_i
  end

  def save()
    sql ="INSERT INTO movies (title, genre, rating)
    VALUES ($1, $2, $3)
    RETURNING id"
    values = [@title, @genre, @rating]
    movie_hash = SqlRunner.run(sql , values).first
    @id = movie_hash['id'].to_i
  end
end
