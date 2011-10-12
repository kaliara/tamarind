class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.string :slug
      t.text :content
      t.boolean :published, :default => false

      t.timestamps
    end
  end
end
