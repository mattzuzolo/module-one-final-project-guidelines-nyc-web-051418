class House < ActiveRecord::Base


    has_many :characters
    has_many :names, through: :characters

end
