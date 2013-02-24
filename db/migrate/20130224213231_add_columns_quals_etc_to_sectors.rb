class AddColumnsQualsEtcToSectors < ActiveRecord::Migration
  def change
    add_column :sectors, :print_description, :text
    add_column :sectors, :qualities, :string
    add_column :sectors, :useful_contacts, :text
  end
end
