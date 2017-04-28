class CreateGrapeSorts < ActiveRecord::Migration
  def change
    create_table :grape_sorts do |t|
      t.string :name, null: false, limit: 64
      t.string :place_of_growth, null: false, limit: 64
      t.date :date_of_collection, null: false

      t.timestamps null: false
    end
  end

  
end
