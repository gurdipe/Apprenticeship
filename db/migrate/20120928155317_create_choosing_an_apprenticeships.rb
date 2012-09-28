class CreateChoosingAnApprenticeships < ActiveRecord::Migration
  def change
    create_table :choosing_an_apprenticeships do |t|
      t.text :skills
      t.text :travel
      t.text :employers
      t.text :qualifications
      t.text :training
      t.text :money

      t.timestamps
    end
  end
end
