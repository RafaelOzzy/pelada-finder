class ChangeNeighborhood < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :neighborhood, :address
  end
end
