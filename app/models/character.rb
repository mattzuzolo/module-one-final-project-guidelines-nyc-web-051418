# require 'sinatra/activerecord'
# class Character < ActiveRecord::Base
#
#     has_many :titles
#     belongs_to :houses
#
#
# end

class Character < ActiveRecord::Base

  # has_many :titles
  # belongs_to :houses
  def get_first_character
    self
  end
  binding.pry
end
