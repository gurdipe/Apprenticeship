class AddSectorIdToApprenticeshipType < ActiveRecord::Migration
  def change
    add_column :apprenticeship_types, :sector_id, :integer
  end
end
