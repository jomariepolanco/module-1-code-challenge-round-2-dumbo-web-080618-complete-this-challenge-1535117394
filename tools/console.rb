require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
v1 = Viewer.new("mike")
v2 = Viewer.new("ashley")
v3 = Viewer.new("jason")
 
joker = Movie.new("The Joker")
notebook = Movie.new("The Notebook")
center_stage = Movie.new("Center Stage")

q1 = QueueItem.new(v1, joker, 4)
q2 = QueueItem.new(v2, notebook, 3)
q3 = QueueItem.new(v3, center_stage, 2)
q4 = QueueItem.new(v1, notebook, 4)
      binding.pry
     

0 #leave this here to ensure binding.pry isn't the last line
