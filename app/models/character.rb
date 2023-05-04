# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord

  belongs_to(:movie, { :foreign_key =>"movie_id", :class_name =>"Movie"}) # This looks in the Character table, identifies the "movie_id" as the foreign key that associates it with the :movie in the Movie table.
  belongs_to(:actor, { :foreign_key =>"actor_id", :class_name =>"Actor"}) # This looks in the 


   ## Old Way ##

  #def movie
    #key = self.movie_id

    #matching_set = Movie.where({ :id => key })

    #the_one = matching_set.at(0)

    #return the_one
 # end
end
