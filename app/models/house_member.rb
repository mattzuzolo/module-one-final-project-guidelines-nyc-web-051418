class HouseMember < ActiveRecord::Base
    belongs_to :house
    has_one :character
    # has_many :character
    # has_many :nickname, through: :character
end
