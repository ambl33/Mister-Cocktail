class CreateDoses < ActiveRecord::Migration[6.0]
  def change
    create_table :doses do |t|
      t.string :description
      t.string :cocktail
      t.string :references
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
