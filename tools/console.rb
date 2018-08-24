require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
chris = Viewer.new("chris")
prince = Viewer.new("prince")
joy = Viewer.new("joy")
maddy = Viewer.new("maddy")

earth = Movie.new("earth")
corgis = Movie.new("corgis")
jane_the_movie = Movie.new("jane_the_movie")


queue1 = QueueItem.new(earth, chris, 5)
queue2 = QueueItem.new(jane_the_movie, prince)
queue3 = QueueItem.new(earth, maddy, 3)
queue1 = QueueItem.new(earth, chris, 5)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
