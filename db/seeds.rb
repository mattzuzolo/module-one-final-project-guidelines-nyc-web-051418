
require_relative '../config/environment.rb'
require_relative '../app/models/character.rb'
require_relative '../app/models/house.rb'
require_relative '../app/models/house_member.rb'
require_relative '../app/models/nickname.rb'

require 'pry'

houses_url = "https://anapioficeandfire.com/api/houses?pageSize=100"
characters_url = "https://anapioficeandfire.com/api/characters?pageSize=100"

response = HTTParty.get(characters_url)
parsed_response = response.parsed_response

house_response = HTTParty.get(houses_url)
house_parsed_response = house_response.parsed_response




  def make_sworn_member_tables(house_parsed_response)

  end


#   def make_character_array(parsed_response)
#     parsed_response.each do |individual_character|
#
#       if individual_character["name"] != ""
#         binding.pry
#         Character.create(name: individual_character["name"], gender: individual_character["gender"], culture: individual_character["culture"], born: individual_character["born"], died: individual_character["died"], character_id: strip_url(individual_character["url"])
# )
#       end
#     end
#   end



  def make_character_bio_array(parsed_response)
    parsed_response.each do |individual_character|
      if individual_character["name"] != ""
        Character.create(name: individual_character["name"], gender: individual_character["gender"], culture: individual_character["culture"], born: individual_character["born"], died: individual_character["died"], character_id: strip_url(individual_character["url"]))
      end

    end
  end

  def make_character_nickname_array(parsed_response)
    parsed_response.each do |individual_character|
      if individual_character["name"] != ""
        individual_character.each do |nickname|
          if nickname[0] == "aliases"
          #  binding.pry
            new_nickname = Nickname.create(aliases: nickname[1][0])
            Character.create(nickname_id: new_nickname.id)
            #binding.prys
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
  #
  def make_house_member_array(house_parsed_response)
    house_parsed_response.each do |individual_house|
        individual_house.each do |member_array|

          if member_array[0] == "swornMembers" && !member_array[1].empty?
            member_array[1].each do |individual_member|



              #pass in house as House name as instance
              #create HouseMember.create
              #find the house instance that correspondeds to the string values from the data
              HouseMember.create(house: find_right_house(individual_house["name"]), sworn_member: individual_member)
            end
          end
        end
      end
  end

  def find_right_house(house_name_string)

    House.all.each do |house_instance|
        if house_instance.name == house_name_string
          # binding.pry#
            return house_instance
        end
    end
  end

  def strip_url(url)
    url_num = url.split("/").last.to_i
  end

  strip_url("https://anapioficeandfire.com/api/characters/583")

  find_right_house("House Algood")

  make_character_bio_array(parsed_response)
  make_character_nickname_array(parsed_response)
  make_house_array(house_parsed_response)
  make_house_member_array(house_parsed_response)



  require_all 'lib'
  require_all 'app'
  require 'httparty'
