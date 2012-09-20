class AlterColumnDescriptionToSectorDescriptionSector < ActiveRecord::Migration
  def change
  	rename_column(:sectors, :description, :sector_description)
  end

 end
