class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :published_year
      t.string :genre
      t.integer :stock

      t.timestamps
    end
    create_table :users_books do |t|
      t.references :users, foreign_key: true
      t.references :books, foreign_key: true
      t.date :ub_date
      t.boolean :state
    end
  end
end
