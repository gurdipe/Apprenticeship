class CreateTrainingProviders < ActiveRecord::Migration
  def change
    create_table :training_providers do |t|
      t.string :provider_name
      t.string :region
      t.string :logo_image
      t.text :provider_description
      t.string :email_address
      t.string :web_address
      t.string :contact_number
      t.integer :position

      t.timestamps
    end
  end
end
