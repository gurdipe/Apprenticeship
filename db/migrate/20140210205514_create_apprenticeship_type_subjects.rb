class CreateApprenticeshipTypeSubjects < ActiveRecord::Migration
  def change
    create_table :apprenticeship_type_subjects do |t|
      t.integer :apprenticeship_type_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
