2.times do |page| # Run the command for 10 times
  url = "https://api.themoviedb.org/3/movie/popular?api_key=b372057c7f9943482556d6e5ca9cc046&language=en-US&page=#{page+1}" # Replace YOUR_API_KEY with your actual API key
  movies_serialized = URI.open(url).read
  movies = JSON.parse(movies_serialized)['results']

  movies.each do |movie|
    Movie.create(
      title: movie['title'],
      overview: movie['overview'],
      rating: movie['vote_average'],
      poster_url: "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
    )
    puts "Created #{movie['title']}"
  end
end
