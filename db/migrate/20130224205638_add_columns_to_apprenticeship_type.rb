class AddColumnsToApprenticeshipType < ActiveRecord::Migration
  def change
    add_column :apprenticeship_types, :print_title, :string
    add_column :apprenticeship_types, :print_description, :text
    add_column :apprenticeship_types, :print_qualification, :text
    add_column :apprenticeship_types, :print_job_role, :text
    add_column :apprenticeship_types, :issuing_authority, :string
    add_column :apprenticeship_types, :new, :string
    add_column :apprenticeship_types, :revised, :string
    add_column :apprenticeship_types, :higher_apprenticeship, :string
  end
end
