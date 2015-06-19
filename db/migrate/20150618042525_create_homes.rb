class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
    	t.string :text
      t.timestamps
    end
  end
end
