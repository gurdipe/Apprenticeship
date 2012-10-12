class CreateProviderSectors < ActiveRecord::Migration
  def change
    create_table :provider_sectors do |t|
      t.integer :sector_id
      t.integer :training_provider_id

      t.timestamps
    end
  end
end
