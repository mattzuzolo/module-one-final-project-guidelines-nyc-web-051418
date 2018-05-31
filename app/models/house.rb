class House < ActiveRecord::Base
 # has_many :character
 has_many :house_members
 # has_many :nickname, through: :character


end

# class House < ActiveRecord::Base
#
#
#     has_many :characters
#     has_many :titles#, through: :characters
#
# end
