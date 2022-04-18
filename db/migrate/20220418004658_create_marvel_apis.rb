class CreateMarvelApis < ActiveRecord::Migration[7.0]
  def change
    create_table :marvel_apis do |t|

      t.timestamps
    end
  end
end
