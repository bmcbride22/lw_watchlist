require 'open-uri'
require 'json'

popular_url = 'https://api.themoviedb.org/3/trending/movie/week?api_key=88bc341d3392f9386fddd1d57bc85b70'

serialized_response = URI.open(popular_url).read
response = JSON.parse(serialized_response)

puts 'Request complete, adding movies'
response['results'].each do |result|
  movie = Movie.new
  movie.title = result['title']
  movie.synopsis = result['overview']
  movie.url = "https://image.tmdb.org/t/p/w500#{result['poster_path']}"
  movie.rating = result['vote_average']
  puts movie
  movie.save
end

puts 'Seeding complete'
