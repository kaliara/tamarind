class ChangeColumnDefaultofHiddenforSections < ActiveRecord::Migration
  def up
    change_column_default :sections, :hidden, true
  end

  def down
    change_column_default :sections, :hidden, nil
  end
end