class AddKeyToSeshes < ActiveRecord::Migration[7.0]
  def change
    add_column :seshes, :key, :integer
    add_column :seshes, :recommended, :string
  end
end
