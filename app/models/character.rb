class Character < ActiveRecord::Base
  # belongs_to :house
  has_many :nicknames
  has_one :house_member

  def self.get_character_names
    names = Character.all.map do |character|
      character.name
    end

    clean_name = names.reject do |string|
      string.to_s.empty?
    end
    clean_name
    # getting 3 "walders", why?
  end

  def self.get_character_genders
    genders = Character.all.map do |character|
      character.gender
    end

    clean_gender = genders.reject do |string|
      string.to_s.empty?
    end
    clean_gender
  end

  def self.get_character_births
    births = Character.all.map do |character|
      character.born
    end

    clean_birth = births.reject do |string|
      string.to_s.empty?
    end
    clean_birth
  end

  def self.get_character_deaths
    deaths = Character.all.map do |character|
      character.died
    end

    clean_death = deaths.reject do |string|
      string.to_s.empty?
    end
    clean_death
  end

end

# <--- OLD REQUIRE CODE --->
# require 'sinatra/activerecord'
# class Character < ActiveRecord::Base
#
#     has_many :titles
#     belongs_to :houses
#
#
# end
