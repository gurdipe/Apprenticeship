class AddColumnToHowToApply < ActiveRecord::Migration
  def change
    add_column :how_to_applies, :help_title, :string
  end
end
