class CreateProviderInfluences < ActiveRecord::Migration
  def change
    create_table :provider_influences do |t|
      t.integer :region_id
      t.integer :training_provider_id

      t.timestamps
    end
  end
end
