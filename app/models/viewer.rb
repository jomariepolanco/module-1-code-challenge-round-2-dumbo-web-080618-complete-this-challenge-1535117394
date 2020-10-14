class Viewer

  attr_reader :name 

  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select {|item| item.viewer == self}
  end

  def queue_movies
    queue_items.map {|item| item.movie}
  end

  def add_movie_to_queue(movie)
     queue_movies.include? movie == false 
     QueueItem.new(self, movie) 
  end

  def rate_movie(movie, rating)
    if queue_movies.include? movie
      queue_items.find do |item| 
        item.movie == self
        item.rating = rating 
      end
    else
      QueueItem.new(self, movie, rating)
    end
  end

end


