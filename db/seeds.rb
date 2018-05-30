# require_relative "../lib/parser.rb"
#
# binding.pry
# 1

require 'pry'
require 'json'
require 'rest-client'

houses_url = "https://anapioficeandfire.com/api/houses"
characters_url = "https://anapioficeandfire.com/api/characters"
books_url = "https://anapioficeandfire.com/api/books"

def parse_house(houses_url)
    houses = RestClient.get(houses_url)
    house_hash = JSON.parse(houses)
end

def parse_characters(characters_url)
  characters = RestClient.get(characters_url)
  JSON.parse(characters)

end


def parse_books(characters_url)
  books = RestClient.get(characters_url)
  JSON.parse(books)
end

house_data = parse_house("https://anapioficeandfire.com/api/houses")
character_data = parse_characters("https://anapioficeandfire.com/api/characters")
book_data = parse_books("https://anapioficeandfire.com/api/books")

    book_data.each do |individual_book|
        binding.pry
        individual_book
        Book.create(name: self.name)
        binding.pry
        true
    end

binding.pry
1
