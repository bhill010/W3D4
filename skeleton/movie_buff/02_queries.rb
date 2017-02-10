def eighties_b_movies
  # List all the movies from 1980-1989 with scores falling between 3 and 5 (inclusive).
  # Show the id, title, year, and score.

  Movie
    .select(:id, :title, :yr, :score)
    .where(score: 3..5, yr: 1980..1989)

end

def bad_years
  # List the years in which a movie with a rating above 7 was not released.
  #List the years where movies rated ONLY BELOW 7 were released
  # Movie.find_by_sql(<<-SQL)
  #   select
  #     m1.yr
  #   from
  #     movies m1
  #   where
  #     m1.score < 7 AND m1.yr NOT IN (
  #       select
  #         m2.yr
  #       from
  #         movies m2
  #       where
  #         m2.score > 7
  #     )
  # SQL
  # bad_years2 = Movie.select(:yr).where("score > 7").to_sql
  # Movie
  #   .select(:yr)
  #   .where("yr NOT IN #{bad_years2}")

  # Movie.where.not(yr: Movie.where("score > 7").distinct.pluck(:yr)).pluck(:yr)
  Movie
    .select(:yr)
    .group(:yr)
    .having("score BETWEEN 0 and 7", COUNT(*) = 0)
end
# .select(:yr).where("yr NOT (#{Movie.select('movies.yr').where("score > 7").to_sql})")
# where.not(yr: Movie.where("score > 7").pluck(:yr)).pluck(:yr)

def cast_list(title)
  # List all the actors for a particular movie, given the title.
  # Sort the results by starring order (ord). Show the actor id and name.

end

def vanity_projects
  # List the title of all movies in which the director also appeared as the starring actor.
  # Show the movie id and title and director's name.

  # Note: Directors appear in the 'actors' table.

end

def most_supportive
  # Find the two actors with the largest number of non-starring roles.
  # Show each actor's id, name and number of supporting roles.

end
