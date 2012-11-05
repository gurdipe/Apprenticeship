class NotNullForPositionTrainingProviders < ActiveRecord::Migration
  def up
  	change_column :training_providers, :position,  :integer,  :null=>false, :default =>1
  	change_column :employers, :position,  :integer,  :null=>false, :default =>1

  end

  def down
  	change_column :training_providers, :position,  :integer
  	change_column :employers, :position,  :integer

  end
end
