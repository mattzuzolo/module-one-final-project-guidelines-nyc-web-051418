class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
        t.string :name
        t.string :region
        t.string :coatOfArms
        t.string :words
        t.string :currentLord
    end
  end

end

# *table1: name, region, coat_of_arms, words, current_lord
# table2: titles
# *table3: sworm_members
