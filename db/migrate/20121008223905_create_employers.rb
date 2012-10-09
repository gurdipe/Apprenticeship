class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :employer_name
      t.string :logo_image
      t.string :logo_image_name
      t.text :employer_description
      t.string :email_address
      t.string :contact_number
      t.integer :position
      t.string :web_address
      t.text :case_study_description
      t.string :case_study_image
      t.string :case_study_image_name

      t.timestamps
    end
  end
end
