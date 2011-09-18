class AddTwoColumnToSections < ActiveRecord::Migration
  def change
    add_column :sections, :two_column, :boolean, :default => false
  end
end
