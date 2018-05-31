class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
        t.string :name
        t.string :gender
        t.string :culture
        t.string :born
        t.string :died
        t.string :url
        # t.string :titles  #arrays??
        # t.string :books
    end
  end
end

# table1: name, gender, culture, born, died
# table2: titles
# table3: aliases
# table4: aligiances(can_flatten)
