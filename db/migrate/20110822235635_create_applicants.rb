class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :daytime_phone
      t.string :evening_phone
      t.string :address_street1
      t.string :address_street2
      t.string :address_city
      t.string :address_state
      t.string :address_zipcode
      t.string :employer1_name
      t.string :employer1_address_street1
      t.string :employer1_address_street2
      t.string :employer1_address_city
      t.string :employer1_address_state
      t.string :employer1_address_zipcode
      t.date :employer1_start_date
      t.date :employer1_end_date
      t.text :employer1_notes
      t.string :employer2_name
      t.string :employer2_address_street1
      t.string :employer2_address_street2
      t.string :employer2_address_city
      t.string :employer2_address_state
      t.string :employer2_address_zipcode
      t.date :employer2_start_date
      t.date :employer2_end_date
      t.text :employer2_notes
      t.string :employer3_name
      t.string :employer3_address_street1
      t.string :employer3_address_street2
      t.string :employer3_address_city
      t.string :employer3_address_state
      t.string :employer3_address_zipcode
      t.date :employer3_start_date
      t.date :employer3_end_date
      t.text :employer3_notes
      t.string :education_completed
      t.text :brag
      t.boolean :contact_previous_employers
      t.boolean :convicted_of_felony
      t.string :position_applying_for
      t.boolean :full_time
      t.integer :desired_salary
      t.string :available_shifts
      t.date :available_start_date

      t.timestamps
    end
  end
end
