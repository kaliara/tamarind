class ChangeColumnDefaultOfPositionsForItems < ActiveRecord::Migration
  def up
    change_column_default :items, :position, 0
  end

  def down
    change_column_default :items, :position, nil
  end
end