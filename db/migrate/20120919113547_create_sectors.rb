class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :title
      t.string :small_image
      t.string :app_types_image
      t.text :description

      t.timestamps
    end
  end
end
