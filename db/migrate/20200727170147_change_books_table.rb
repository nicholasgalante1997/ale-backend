class ChangeBooksTable < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :subtitle, :string 
    add_column :books, :price, :string
    add_column :books, :url, :string 
    add_column :books, :image, :string 
  end
end
