class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :section_id
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :position
      t.boolean :direct_from_london

      t.timestamps
    end
  end
end
