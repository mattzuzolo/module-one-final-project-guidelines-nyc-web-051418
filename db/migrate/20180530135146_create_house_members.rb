class CreateHouseMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :house_members do |t|
        # t.string :house_name
        t.string :sworn_member
        t.integer :house_id
    end
  end
end
