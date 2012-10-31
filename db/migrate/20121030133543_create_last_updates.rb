class CreateLastUpdates < ActiveRecord::Migration
  def change
    create_table :last_updates do |t|

      t.timestamps
    end
  end
end
