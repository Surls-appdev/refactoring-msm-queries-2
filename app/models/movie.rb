# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  # Define the 6 1-to-many accessor methods:
    # Director#filmography
    
    # Movie#director
    # belongs_to(:director, { :foreign_key =>"director_id", :class_name =>"Director"})  # This looks in the Movie Table, takes the director_id as the foregin key, and matches it with :director in the Director table.
    # belongs_to(:director, { :class_name =>"Director"})  # this short version works because my foreign key starts with "director".
    belongs_to(:director, { })  # this even shorter version works because I named things in the conventional way
    
    # Movie#characters
    has_many(:characters, { :foreign_key => "movie_id", :class_name =>"Character"})



    has_many(:cast, {:through => "characters", :source => "Actor"})


   # also_has(:actors, {:foreign_key => "actor_id", :class_name =>"Character"})



    # Character#movie
      # did this in character.rb
    # Character#actor
      # did this in character.rb
    # Actor#characters
      # did this in Actor.rb

  

 
 ## Old Way ##
  # def director
   # key = self.director_id

    #matching_set = Director.where({ :id => key })

   # the_one = matching_set.at(0)

   # return the_one
  #end
end
