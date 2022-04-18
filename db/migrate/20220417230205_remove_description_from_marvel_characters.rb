class RemoveDescriptionFromMarvelCharacters < ActiveRecord::Migration[7.0]
  def change
    remove_column :marvel_characters, :description, :string
  end
end
