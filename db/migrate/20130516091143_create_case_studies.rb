class CreateCaseStudies < ActiveRecord::Migration
  def change
    create_table :case_studies do |t|
      t.string :heading
      t.integer :sector_id
      t.string :company_name
      t.string :title
      t.string :standfirst
      t.string :description
      t.string :website
      t.string :hyperlink
      t.string :email_address
      t.string :telephone_number
      t.string :logo_image
      t.string :photo

      t.timestamps
    end
  end
end
