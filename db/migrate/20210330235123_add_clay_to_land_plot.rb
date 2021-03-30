class AddClayToLandPlot < ActiveRecord::Migration[6.1]
  def change
    add_column :land_plots, :clay, :integer
  end
end
