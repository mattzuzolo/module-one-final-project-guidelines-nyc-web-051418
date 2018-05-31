class AddNicknameIdToCharacter < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :nickname_id, :integer
  end
end
