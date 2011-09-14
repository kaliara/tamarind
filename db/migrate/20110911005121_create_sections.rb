class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :menu_id
      t.string :name
      t.integer :position
      t.boolean :show_name, :default => true
      t.boolean :hidden

      t.timestamps
    end
  end
end
