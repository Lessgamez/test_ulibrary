class AddDeliverDatetoUsersBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :users_books, :deliverdate, :date

  end
end
