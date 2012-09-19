class CreateApprenticeshipTypes < ActiveRecord::Migration
  def change
    create_table :apprenticeship_types do |t|
      t.string :apprenticeship_type
      t.text :description
      t.string :job_role
      t.string :qualification
      t.string :salary

      t.timestamps
    end
  end
end
