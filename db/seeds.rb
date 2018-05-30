
require_relative '../config/environment.rb'
require_relative '../app/models/character.rb'
require_relative '../app/models/title.rb'
require_relative '../app/models/house.rb'
require 'pry'

houses_url = "https://anapioficeandfire.com/api/houses"
characters_url = "https://anapioficeandfire.com/api/characters"

response = HTTParty.get(characters_url)
parsed_response = response.parsed_response


  def make_character_array(parsed_response)
    parsed_response.each do |individual_character|
      # binding.pry
      Character.create(name: "jon snow")
      true
    end
  end

  make_character_array(parsed_response)



  # require_all 'lib'
  # require_all 'app'
  # require 'httparty'
