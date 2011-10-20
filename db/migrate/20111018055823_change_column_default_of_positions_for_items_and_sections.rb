class ChangeColumnDefaultOfPositionsForItemsAndSections < ActiveRecord::Migration
  def up
    change_column_default :items, :position, 0
    change_column_default :sections, :position, 0
  end

  def down
    change_column_default :sections, :position, nil
    change_column_default :items, :position, nil
  end
end