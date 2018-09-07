class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :gif_id
      t.string :caption

      t.timestamps
    end
  end
end
