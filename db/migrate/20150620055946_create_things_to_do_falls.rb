class CreateThingsToDoFalls < ActiveRecord::Migration
  def change
    create_table :things_to_do_falls do |t|
      t.string :image
      t.string :name
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
