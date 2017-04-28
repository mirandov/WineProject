class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :ratio, null: false
      t.references :grape_sort, index: true, foreign_key: true
      t.references :wine_sort, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
