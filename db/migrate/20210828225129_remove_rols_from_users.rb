class RemoveRolsFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :rols_id, :string
  end
end
