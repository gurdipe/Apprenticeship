class AlterColumnCaptionToTextEmployerPhotos < ActiveRecord::Migration
  def up
		change_column :employer_photos, :caption, :text
  end

  def down
  			change_column :employer_photos, :caption, :string
  end
end
