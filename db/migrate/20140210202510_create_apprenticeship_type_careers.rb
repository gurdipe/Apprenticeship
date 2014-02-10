class CreateApprenticeshipTypeCareers < ActiveRecord::Migration
  def change
    create_table :apprenticeship_type_careers do |t|
      t.integer :apprenticeship_type_id
      t.integer :career_id

      t.timestamps
    end
  end
end
