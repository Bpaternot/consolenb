class CreateConsoles < ActiveRecord::Migration[5.0]
  def change
    create_table :consoles do |t|
      t.string :brand
      t.integer :shifter
      t.string :description
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
