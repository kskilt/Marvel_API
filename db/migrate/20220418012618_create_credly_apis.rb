class CreateCredlyApis < ActiveRecord::Migration[7.0]
  def change
    create_table :credly_apis do |t|

      t.timestamps
    end
  end
end
