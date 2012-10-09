class CreateEmployerInfluences < ActiveRecord::Migration
  def change
    create_table :employer_influences do |t|
      t.integer :employer_id
      t.integer :region_id

      t.timestamps
    end
  end
end
