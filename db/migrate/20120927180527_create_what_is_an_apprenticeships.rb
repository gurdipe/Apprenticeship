class CreateWhatIsAnApprenticeships < ActiveRecord::Migration
  def change
    create_table :what_is_an_apprenticeships do |t|
      t.text :description_detail
      t.text :what_is_it_like
      t.text :why_do_one
      t.text :qualifications
      t.text :ten_things

      t.timestamps
    end
  end
end
