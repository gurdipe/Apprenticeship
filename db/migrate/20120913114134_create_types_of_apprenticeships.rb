class CreateTypesOfApprenticeships < ActiveRecord::Migration
  def change
    create_table :types_of_apprenticeships do |t|
      t.string :sector
      t.string :app_type
      t.string :small_icon
      t.string :sector_image
      t.string :job_roles
      t.string :salary
      t.string :quals

      t.timestamps
    end
  end
end
