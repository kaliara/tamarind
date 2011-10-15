class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :from_name
      t.string :from_email
      t.text :body
      t.integer :reason

      t.timestamps
    end
  end
end
