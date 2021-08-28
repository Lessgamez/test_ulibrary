class CreateRols < ActiveRecord::Migration[6.1]
  def change
    create_table :rols do |t|
      t.string :name
      t.boolean :state

      t.timestamps
    end
  end
end
