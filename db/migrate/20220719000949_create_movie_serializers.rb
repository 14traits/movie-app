class CreateMovieSerializers < ActiveRecord::Migration[7.0]
  def change
    create_table :movie_serializers do |t|
      t.string :title
      t.integer :year
      t.text :plot
      t.boolean :english

      t.timestamps
    end
  end
end
