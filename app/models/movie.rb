class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue|
      queue.movie == self
    end
  end

  def viewers
    queue_items.map do |queue|
      queue.viewers
    end
  end

  def average_rating
    rating = 0
    all_queue = queue_items.map do |queue|
      rating  += queue.rating
  end
    rating /= all_queue.length
  end

  def self.highest_rated
      queue_item = QueueItem.all.map do |queue|
                        queue
    end
      queue_item.sort_by do |queue| queue.rating
    end.last
end

end
