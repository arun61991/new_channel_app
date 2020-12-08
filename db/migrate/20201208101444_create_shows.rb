class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.string :title
      t.text :description
      t.string :time
      t.integer :channel_id

      t.timestamps
    end
  end
end
