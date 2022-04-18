class CreateMarvelCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :marvel_characters do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
