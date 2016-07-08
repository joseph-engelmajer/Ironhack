class AddAtrributesToConcerts < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :artist, :string
    add_column :concerts, :venue, :string
    add_column :concerts, :city, :string
    add_column :concerts, :date, :datetime
    add_column :concerts, :price, :integer
    add_column :concerts, :description, :text
  end
end
