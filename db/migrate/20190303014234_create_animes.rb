class CreateAnimes < ActiveRecord::Migration[5.2]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :description
      t.string :genre

      t.timestamps
    end
  end
end
