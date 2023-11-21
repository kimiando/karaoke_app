class CreateSeshes < ActiveRecord::Migration[7.0]
  def change
    create_table :seshes do |t|
      t.integer :difficulty
      t.references :bookmark, null: false, foreign_key: true

      t.timestamps
    end
  end
end
