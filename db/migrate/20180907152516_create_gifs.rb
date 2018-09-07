class CreateGifs < ActiveRecord::Migration[5.2]
  def change
    create_table :gifs do |t|
      t.string :title
      t.string :img_url

      t.timestamps
    end
  end
end
