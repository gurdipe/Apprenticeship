class CreateEmployerPhotos < ActiveRecord::Migration
  def change
    create_table :employer_photos do |t|
      t.string :photo
      t.string :caption
      t.integer :employer_id

      t.timestamps
    end
  end
end
