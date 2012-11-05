class DefaultValueForPositionEmployers < ActiveRecord::Migration
  def up
  	change_column :employers, :position, :integer, :default => 1
  end

  def down
  	change_column :employers, :postion, :integer, :default => 1
  end
end
