class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :plot
      t.float :duration
      t.references :genre
      t.timestamps null: false
    end
  end
end
