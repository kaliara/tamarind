class ChangePriceColumnForItems < ActiveRecord::Migration
  def up
    change_column :items, :price, :decimal, :precision => 10, :scale => 2
  end

  def down
    change_column :items, :price, :decimal, :precision => 10, :scale => 0
  end
end