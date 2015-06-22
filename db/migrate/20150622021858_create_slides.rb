class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title
      t.string :caption
      t.string :image

      t.timestamps
    end
  end
end
