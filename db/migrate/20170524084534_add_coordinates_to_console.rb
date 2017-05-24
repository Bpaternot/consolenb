class AddCoordinatesToConsole < ActiveRecord::Migration[5.0]
  def change
    add_column :consoles, :address, :string
    add_column :consoles, :latitude, :float
    add_column :consoles, :longitude, :float
  end
end
