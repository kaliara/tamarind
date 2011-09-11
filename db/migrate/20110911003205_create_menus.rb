class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :name
      t.boolean :viewable, :default => false
      t.string :pdf_link

      t.timestamps
    end
  end
end
