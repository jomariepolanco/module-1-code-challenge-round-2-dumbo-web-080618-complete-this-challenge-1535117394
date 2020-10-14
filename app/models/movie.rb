class Movie

  attr_accessor :name 
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end

  def self.all 
    @@all
  end

  def queue_items
    QueueItem.all.select {|item| item.movie == self}
  end

  def viewers
    queue_items.map {|item| item.viewer == self}
  end

  def average_rating
    queue_items.sum {|item| item.rating} / queue_items.count
  end

  def self.highest_rated
    self.all.max_by {|movie| movie.average_rating}
  end
end
