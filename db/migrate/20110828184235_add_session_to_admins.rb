class AddSessionToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :session, :string
  end
end
