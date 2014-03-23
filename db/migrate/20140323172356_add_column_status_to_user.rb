class AddColumnStatusToUser < ActiveRecord::Migration
  def change
    add_column :users, :status, :string
    add_column :users, :address, :string
  end
end
