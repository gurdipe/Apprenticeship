class DefaultValueForPositionTrainingProviders < ActiveRecord::Migration
  def up
  	  	change_column :training_providers, :position, :integer, :default => 1

  end

  def down
  	change_column :training_providers, :position, :integer, :default => 1
  end
end
