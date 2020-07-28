class AddBooksTable < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre 
      t.timestamps
    end 
  end
end
