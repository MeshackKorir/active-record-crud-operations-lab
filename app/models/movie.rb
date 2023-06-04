class Movie < ActiveRecord::Base

    # CREATE
   def self.create_table(year)
        movie = Movie.new(title: title)
        movie.save
        movie
   end

   # READ
   def self.first_movie
        Movie.first
   end
   
   def self.last_movie
    Movie.last
   end
   
   def self.movie_count
    Movie.count
   end
   
   def self.find_movie_with_id(id)
        movie.find_movie_with_id
   end
   
   def self.find_movie_with_attributes(attributes)
    Movie.find_by(attributes)
  end

  def self.find_movies_after_2002
      where("release_date > 2002")
  end

   # Update
   def update_with_attributes(attributes)
    update(attributes)
    self
  end

  def self.update_all_titles(new_title)
    Movie.update_all(title: new_title)
  end

   # Update
   def update_with_attributes(attributes)
    update(attributes)
    self
  end

  def self.update_all_titles(new_title)
    Movie.update_all(title: new_title)
  end
end