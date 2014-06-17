class AddNomAuteur < ActiveRecord::Migration
  def change
    add_column :auteurs, :nom, :string
  end
end
