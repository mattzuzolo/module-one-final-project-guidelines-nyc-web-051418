class CreateHouseMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :house_members do |t|
        t.string :sworn_members
    end
  end
end
