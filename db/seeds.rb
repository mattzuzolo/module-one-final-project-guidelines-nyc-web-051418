
require_relative '../config/environment.rb'
require_relative '../app/models/character.rb'
require_relative '../app/models/title.rb'
require_relative '../app/models/nickname.rb'
require_relative '../app/models/house.rb'

require 'pry'

houses_url = "https://anapioficeandfire.com/api/houses"
characters_url = "https://anapioficeandfire.com/api/characters?pageSize=25"

response = HTTParty.get(characters_url)
parsed_response = response.parsed_response

house_response = HTTParty.get(houses_url)
house_parsed_response = house_response.parsed_response


  def make_character_array(parsed_response)
    parsed_response.each do |individual_character|

      # binding.pry
      if individual_character["name"] != ""
        Character.create(name: individual_character["name"], gender: individual_character["gender"], culture: individual_character["culture"], born: individual_character["born"], died: individual_character["died"])
      end
    end
  end



  def make_character_bio_array(parsed_response)
    parsed_response.each do |individual_character|
      if individual_character["name"] != ""
        Character.create(name: individual_character["name"], gender: individual_character["gender"], culture: individual_character["culture"], born: individual_character["born"], died: individual_character["died"])
      end
    end
  end

  def make_character_nickname_array(parsed_response)
    parsed_response.each do |individual_character|
      if individual_character["name"] != ""


          individual_character.each do |nickname|
              if nickname[0] == "aliases"
                Nickname.create(aliases: nickname[1])
              end
          end
        end
    end
  end



  def make_house_array(house_parsed_response)
    house_parsed_response.each do |individual_house|
      House.create(name: individual_house["name"], region: individual_house["region"], coatOfArms: individual_house["coatOfArms"], words: individual_house["words"], currentLord: individual_house["currentLord"])

    end
  end

  make_character_bio_array(parsed_response)
  make_character_nickname_array(parsed_response)
  make_house_array(house_parsed_response)



  # require_all 'lib'
  # require_all 'app'
  # require 'httparty'
