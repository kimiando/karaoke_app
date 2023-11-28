class AddHypeNumberToSeshes < ActiveRecord::Migration[7.0]
  def change
    add_column :seshes, :hype_number, :integer
  end
end
