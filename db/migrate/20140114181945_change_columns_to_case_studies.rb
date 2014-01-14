class ChangeColumnsToCaseStudies < ActiveRecord::Migration
  def change
    change_column :case_studies, :heading, :text
    change_column :case_studies, :sector_id, :text
    change_column :case_studies, :company_name, :text
    change_column :case_studies, :title, :text
    change_column :case_studies, :standfirst, :text
    change_column :case_studies, :description, :text
    change_column :case_studies, :website, :text
    change_column :case_studies, :hyperlink, :text
    change_column :case_studies, :email_address, :text
    change_column :case_studies, :telephone_number, :text
  end
end
