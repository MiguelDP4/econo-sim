class CreateLandPlots < ActiveRecord::Migration[6.1]
  def change
    create_table :land_plots do |t|
      t.integer :position_x
      t.integer :position_y
      t.integer :fertility
      t.integer :trees
      t.integer :stone
      t.integer :iron_ore
      t.integer :copper_ore

      t.timestamps
    end
  end
end
