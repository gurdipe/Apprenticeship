class CreateEmployerSectors < ActiveRecord::Migration
  def change
    create_table :employer_sectors do |t|
      t.integer :employer_id
      t.integer :sector_id

      t.timestamps
    end
  end
end
