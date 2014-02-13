class AddHallOfFameToCaseStudies < ActiveRecord::Migration
  def change
    add_column :case_studies, :hall_of_fame, :integer, default: 0
  end
end
