class Name < ActiveRecord::Base

    belongs_to :characters
    belongs_to :houses, through: :characters
    #has_many :characters ????
end
