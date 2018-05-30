class Character < ActiveRecord::Base

    has_many :names
    belongs_to :houses


end
