class CreateHowToApplies < ActiveRecord::Migration
  def change
    create_table :how_to_applies do |t|
      t.text :content

      t.timestamps
    end
  end
end
