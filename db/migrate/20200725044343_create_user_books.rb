class CreateUserBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :user_books do |t|
      t.integer :user_id
      t.boolean :been_read
      t.string :isbn13

      t.timestamps
    end
  end
end
