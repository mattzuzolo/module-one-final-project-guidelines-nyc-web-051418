class CreateNicknames < ActiveRecord::Migration[5.1]
  def change
    create_table :nicknames do |t|
        t.string :aliases
        t.integer :character_id
    end
  end
end
