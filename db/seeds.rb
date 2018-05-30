
require_relative '../config/environment.rb'
require_relative '../app/models/character.rb'
require_relative '../app/models/title.rb'
require_relative '../app/models/house.rb'
require 'pry'
require 'json'

# houses_url = "https://anapioficeandfire.com/api/houses"
# characters_url = "https://anapioficeandfire.com/api/characters"

file = File.read("../lib/got_chars.json")
hash = JSON.parse(file)
# characters_url = "./got_chars.json"
# new_j = JSON.parse(characters_url)
# parsed_response = response.parsed_response

  def make_character_array(hash)
    hash.select do |character|
      name = character["Name"]
      gender = character["Gender"]
      culture = character["Culture"]
      born = character["Born"]
      died = character["Died"]

      char = Character.new(name: name, gender: gender, culture: culture, born: born, died: died  )
      a_char.save
    end
  end

  make_character_array(hash)
  # require_all 'lib'
  # require_all 'app'
  # require 'httparty'
pry.Start
