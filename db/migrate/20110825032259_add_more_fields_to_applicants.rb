class AddMoreFieldsToApplicants < ActiveRecord::Migration
  def self.up
    add_column :applicants, :legal_to_work_in_usa, :boolean
    add_column :applicants, :reference1_name, :string
    add_column :applicants, :reference1_company, :string
    add_column :applicants, :reference1_relationship, :string
    add_column :applicants, :reference1_contact, :string    
    add_column :applicants, :reference2_name, :string
    add_column :applicants, :reference2_company, :string
    add_column :applicants, :reference2_relationship, :string
    add_column :applicants, :reference2_contact, :string
    add_column :applicants, :employer1_contactable, :boolean, :default => true
    add_column :applicants, :employer2_contactable, :boolean, :default => true
    add_column :applicants, :employer3_contactable, :boolean, :default => true
    add_column :applicants, :employer1_no_contact_reason, :string
    add_column :applicants, :employer2_no_contact_reason, :string
    add_column :applicants, :employer3_no_contact_reason, :string
    add_column :applicants, :employer1_position, :string
    add_column :applicants, :employer2_position, :string
    add_column :applicants, :employer3_position, :string
    add_column :applicants, :employer1_phone, :string
    add_column :applicants, :employer2_phone, :string
    add_column :applicants, :employer3_phone, :string
    
    remove_column :applicants, :contact_previous_employers
  end
  
  def self.down
    add_column :applicants, :contact_previous_employers, :boolean
    remove_column :applicants, :employer3_phone
    remove_column :applicants, :employer2_phone
    remove_column :applicants, :employer1_phone
    remove_column :applicants, :employer3_position
    remove_column :applicants, :employer2_position
    remove_column :applicants, :employer1_position
    remove_column :applicants, :employer3_no_contact_reason
    remove_column :applicants, :employer2_no_contact_reason
    remove_column :applicants, :employer1_no_contact_reason
    remove_column :applicants, :employer3_contactable
    remove_column :applicants, :employer2_contactable
    remove_column :applicants, :employer1_contactable
    remove_column :applicants, :reference2_contact
    remove_column :applicants, :reference2_relationship
    remove_column :applicants, :reference2_company
    remove_column :applicants, :reference2_name
    remove_column :applicants, :reference1_contact
    remove_column :applicants, :reference1_relationship
    remove_column :applicants, :reference1_company
    remove_column :applicants, :reference1_name
    remove_column :applicants, :legal_to_work_in_usa
  end
end
