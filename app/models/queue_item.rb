class QueueItem
  attr_accessor :movie, :viewer, :rating
  @@all = []

  def initialize(movie, viewer, rating = 0)
    @movie = movie
    @viewer = viewer
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end

end


# <!-- ### `QueueItem`
#
# _A `QueueItem` object represents that an individual user has added a particular movie to their queue, and possibly rated it. **It is not the full queue, but a single item in the queue.**_
#
# + `QueueItem.all`
#   + returns an array of all `QueueItem`s
# + `QueueItem#viewer`
#   + returns the viewer associated with this `QueueItem`
# + `QueueItem#movie`
#   + returns the movie associated with this `QueueItem`
# + `QueueItem#rating`
#   + returns the rating for this `QueueItem`. If the viewer has not yet rated the movie, `QueueItem#rating` should be `nil` -->
