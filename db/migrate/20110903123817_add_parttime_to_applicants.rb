class AddParttimeToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :part_time, :boolean, :default => false
  end
end
