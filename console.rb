require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')
require('pry')


star1 = Star.new({
"first_name" => "James",
"last_name" => "McAvoy"
})
star2 = Star.new({
"first_name" => "Ewan",
"last_name" => "McGregor"
})

movie1 = Movie.new({
"title" => "Filth",
"genre" => "crime",
"rating" => 10
})

movie2 = Movie.new({
"title" => "Trainspotting",
"genre" => "noir",
"rating" => 9
})

casting1 = Casting.new({
"movie_id" => movie1.id,
"star_id" => star1.id
})
casting2 = Casting.new({
"movie_id" => movie2.id,
"star_id" => star2.id
})

binding.pry
nil
